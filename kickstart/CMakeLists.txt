set(EXE_TARGET kickstart)

file(REAL_PATH "." EXE_PATH)
file(GLOB_RECURSE EXE_CXX_SOURCES "${EXE_PATH}/*.cpp")
file(GLOB_RECURSE EXE_HEADERS "${EXE_PATH}/*.hpp")
add_executable(${EXE_TARGET} ${EXE_CXX_SOURCES} ${EXE_HEADERS})

file(REAL_PATH ".." EXE_INCLUDE_PATH)
target_include_directories(${EXE_TARGET} PRIVATE "${EXE_INCLUDE_PATH}")

target_link_libraries(${EXE_TARGET} PRIVATE libkickstart)
