cmake_minimum_required(VERSION 3.22)

project(
  kickstart
  VERSION 0.1.0
  DESCRIPTION "A template C++ project to start with"
  LANGUAGES C CXX
)

include(cmake/Logging.cmake)
include(cmake/CompileOptions.cmake)
include(cmake/StdLibrary.cmake)
include(cmake/Sanitize.cmake)
include(cmake/PrintDiagnostics.cmake)

option(KICKSTART_DEVELOPER "Developer mode" OFF)
option(KICKSTART_ASSERTIONS "Enable assertions" OFF)
option(KICKSTART_TESTS "Build tests" OFF)

add_subdirectory(kickstart)
