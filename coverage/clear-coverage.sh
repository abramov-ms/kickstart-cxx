#!/usr/bin/env bash

set -ev

COVERAGE_BUILD=/kickstart/out/build/coverage
lcov --directory "${COVERAGE_BUILD}" --zerocounters
