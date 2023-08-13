set(TEST_TARGET libkickstart_unit_tests)

file(GLOB_RECURSE TEST_CXX_SOURCES "./*.cpp")
file(GLOB_RECURSE TEST_HEADERS "./*.hpp")
add_executable(${TEST_TARGET} ${TEST_CXX_SOURCES} ${TEST_HEADERS})

find_package(GTest REQUIRED)
target_link_libraries(${TEST_TARGET} PRIVATE gtest::gtest libkickstart)
