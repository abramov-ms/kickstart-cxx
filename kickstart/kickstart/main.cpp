#include <iostream>

#include <fmt/format.h>
#include <kickstart/greetings/format_hi.hpp>

using namespace kickstart;

int main() {
  fmt::println("{}", FormatHi("kickstart"));
  return 0;
}
