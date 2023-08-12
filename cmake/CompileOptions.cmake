set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(KICKSTART_COMPILE_OPTIONS -g -Wall -Wextra)
if(KICKSTART_DEVELOPER)
  project_log("Turn warnings into errors")
  list(APPEND KICKSTART_COMPILE_OPTIONS -Werror)
endif()
add_compile_options(${KICKSTART_COMPILE_OPTIONS})

if(KICKSTART_ASSERTIONS)
  project_log("Assertions enabled")
  add_compile_definitions(KICKSTART_ASSERTIONS)
endif()
