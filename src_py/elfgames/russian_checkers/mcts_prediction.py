# Copyright (c) 2018-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree.

import inspect
import os
import torch.nn as nn
from torch.autograd import Variable

import elf.logging as logging
from elf.options import auto_import_options, PyOptionSpec
from rlpytorch.trainer.timer import RLTimer


class MCTSPrediction(object):
    @classmethod
    def get_option_spec(cls):

        # print("\u001b[31;1m|py|\u001b[0m\u001b[37m", "MCTSPrediction::", inspect.currentframe().f_code.co_name)

        spec = PyOptionSpec()
        spec.addBoolOption(
            'backprop',
            'Whether to backprop the total loss',
            True)
        return spec

    @auto_import_options
    def __init__(self, option_map):

        # print("\u001b[31;1m|py|\u001b[0m\u001b[37m", "MCTSPrediction::", inspect.currentframe().f_code.co_name)

        self.policy_loss = nn.KLDivLoss().cuda()
        self.value_loss = nn.MSELoss().cuda()
        self.logger = logging.getIndexedLogger(
            'elfgames.go.MCTSPrediction-', '')
        self.timer = RLTimer()

    def update(self, mi, batch, stats, use_cooldown=False, cooldown_count=0):
        ''' Update given batch '''

        # print("\u001b[31;1m|py|\u001b[0m\u001b[37m", "MCTSPrediction::\u001b[0m", inspect.currentframe().f_code.co_name)

        self.timer.restart()
        if use_cooldown:
            if cooldown_count == 0:
                mi['model'].prepare_cooldown()
                self.timer.record('prepare_cooldown')

        # Current timestep.
        state_curr = mi['model'](batch)
        self.timer.record('forward')

        # print("\u001b[31;1m|py|\u001b[0m\u001b[37m", "MCTSPrediction::", inspect.currentframe().f_code.co_name)
        # print("mi : ", mi)
        # print("batch : ", batch)
        # print("stats : ", stats)
        # print("state_curr keys : ", state_curr.keys())
        # print("batch keys : ", batch["checkers_winner"])
        # print()


        if use_cooldown:
            self.logger.debug(self.timer.print(1))
            return dict(backprop=False)

        targets = batch["checkers_mcts_scores"]
        logpi = state_curr["logpi"]
        pi = state_curr["pi"]


        # backward.
        # loss = self.policy_loss(logpi, Variable(targets)) * logpi.size(1)


        loss = - (logpi * Variable(targets)
                  ).sum(dim=1).mean()  # * logpi.size(1)

        stats["loss"].feed(float(loss))
        total_policy_loss = loss

        entropy = (logpi * pi).sum() * -1 / logpi.size(0)
        stats["entropy"].feed(float(entropy))

        stats["blackwin"].feed(
            float((batch["checkers_winner"] > 0.0).float().sum()) /
            batch["checkers_winner"].size(0))


        # print("state_curr keys : ", state_curr.keys())
        # print("batch keys : ", batch.batch.keys())
        # print("state_curr[V] : ", state_curr["V"])
        # print("batch[winner] : ", batch["checkers_winner"])
        # print("\n\n")
        # print("state_curr[V] : ", state_curr["V"].shape)
        # print("batch[winner] : ", batch["checkers_winner"].shape)
        # print("\n\n")
        # print("state_curr[V].squeeze() : ", state_curr["V"].squeeze())
        # print("Variable(batch[winner]) : ", Variable(batch["checkers_winner"]))
        # print("===================================================")
        # print("===================================================")


        total_value_loss = None
        if "V" in state_curr and "checkers_winner" in batch:
            total_value_loss = self.value_loss(
                state_curr["V"].squeeze(), Variable(batch["checkers_winner"]))

        stats["total_policy_loss"].feed(float(total_policy_loss))
        if total_value_loss is not None:
            stats["total_value_loss"].feed(float(total_value_loss))
            total_loss = total_policy_loss + total_value_loss
        else:
            total_loss = total_policy_loss

        stats["total_loss"].feed(float(total_loss))
        self.timer.record('feed_stats')

        if self.options.backprop:
            total_loss.backward()
            self.timer.record('backward')
            self.logger.debug(self.timer.print(1))
            return dict(backprop=True)
        else:
            self.logger.debug(self.timer.print(1))
            return dict(backprop=False)

