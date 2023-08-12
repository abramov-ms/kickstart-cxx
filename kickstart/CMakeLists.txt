find_package(fmt REQUIRED)

add_executable(kickstart main.cpp)
target_link_libraries(kickstart fmt::fmt)
