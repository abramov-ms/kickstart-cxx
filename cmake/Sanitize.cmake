# UB Sanitizer
# https://clang.llvm.org/docs/UndefinedBehaviorSanitizer.html
if(UBSAN)
  project_log("Sanitize with UB Sanitizer")
  add_compile_options(-fsanitize=undefined -fno-sanitize-recover=all)
  add_link_options(-fsanitize=undefined)
endif()

# Address Sanitizer
# https://clang.llvm.org/docs/AddressSanitizer.html
if(ASAN)
  project_log("Sanitize with Address Sanitizer")
  add_compile_options(-fsanitize=address -fno-sanitize-recover=all)
  add_link_options(-fsanitize=address)
endif()

# Thread Sanitizer
# https://clang.llvm.org/docs/ThreadSanitizer.html
if(TSAN)
  project_log("Sanitize with Thread Sanitizer")
  add_compile_options(-fsanitize=thread -fno-sanitize-recover=all)
  add_link_options(-fsanitize=thread)
endif()
