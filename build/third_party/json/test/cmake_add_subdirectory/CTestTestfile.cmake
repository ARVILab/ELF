# CMake generated Testfile for 
# Source directory: /home/ubuntu/arvi_34/elf/arvi_elf/third_party/json/test/cmake_add_subdirectory
# Build directory: /home/ubuntu/arvi_34/elf/arvi_elf/build/third_party/json/test/cmake_add_subdirectory
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cmake_add_subdirectory_configure "/usr/local/bin/cmake" "-G" "Unix Makefiles" "-Dnlohmann_json_source=/home/ubuntu/arvi_34/elf/arvi_elf/third_party/json" "/home/ubuntu/arvi_34/elf/arvi_elf/third_party/json/test/cmake_add_subdirectory/project")
set_tests_properties(cmake_add_subdirectory_configure PROPERTIES  FIXTURES_SETUP "cmake_add_subdirectory")
add_test(cmake_add_subdirectory_build "/usr/local/bin/cmake" "--build" ".")
set_tests_properties(cmake_add_subdirectory_build PROPERTIES  FIXTURES_REQUIRED "cmake_add_subdirectory")
