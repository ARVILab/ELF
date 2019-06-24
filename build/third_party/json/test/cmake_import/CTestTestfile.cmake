# CMake generated Testfile for 
# Source directory: /home/ubuntu/arvi_34/elf/arvi_elf/third_party/json/test/cmake_import
# Build directory: /home/ubuntu/arvi_34/elf/arvi_elf/build/third_party/json/test/cmake_import
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cmake_import_configure "/usr/local/bin/cmake" "-G" "Unix Makefiles" "-Dnlohmann_json_DIR=/home/ubuntu/arvi_34/elf/arvi_elf/build/third_party/json" "/home/ubuntu/arvi_34/elf/arvi_elf/third_party/json/test/cmake_import/project")
set_tests_properties(cmake_import_configure PROPERTIES  FIXTURES_SETUP "cmake_import")
add_test(cmake_import_build "/usr/local/bin/cmake" "--build" ".")
set_tests_properties(cmake_import_build PROPERTIES  FIXTURES_REQUIRED "cmake_import")
