#include <kickstart/greetings/format_hi.hpp>
#include <fmt/format.h>

namespace kickstart {

std::string FormatHi(std::string_view whom_to_greet) {
  return fmt::format("Hi, {}!", whom_to_greet);
}

}  // namespace kickstart
