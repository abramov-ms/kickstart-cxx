set(LIB_TARGET libkickstart)

file(GLOB_RECURSE LIB_CXX_SOURCES "./*.cpp")
file(GLOB_RECURSE LIB_HEADERS "./*.hpp")
add_library(${LIB_TARGET} ${LIB_CXX_SOURCES} ${LIB_HEADERS})

file(REAL_PATH ".." LIB_INCLUDE_PATH)
target_include_directories(${LIB_TARGET} PUBLIC ${LIB_INCLUDE_PATH})

find_package(fmt REQUIRED)
target_link_libraries(${LIB_TARGET} PUBLIC fmt::fmt)
