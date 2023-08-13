# https://llvm.org/docs/CommandGuide/llvm-cov.html
if(COVERAGE)
  project_log("Generate coverage data")
  add_compile_options(--coverage)
  add_link_options(--coverage)
endif()
