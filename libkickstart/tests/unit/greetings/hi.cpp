#include <gtest/gtest.h>
#include <kickstart/greetings/format_hi.hpp>

using namespace kickstart;

TEST(Greetings, SimpleHi) {
  ASSERT_EQ("Hi, me!", FormatHi("me"));
}
