#!/usr/bin/env bash

set -ev

COVERAGE_DIR=/kickstart/out/coverage/
rm -rf "${COVERAGE_DIR}"
mkdir -p "${COVERAGE_DIR}"

GCOV_TOOL=/kickstart/coverage/llvm-gcov.sh
COVERAGE_BUILD=/kickstart/out/build/coverage
INFO_FILE="${COVERAGE_DIR}/kickstart.info"
lcov --directory "${COVERAGE_BUILD}" --gcov-tool "${GCOV_TOOL}" --capture \
  --output-file "${INFO_FILE}"
lcov --extract "${INFO_FILE}" '/kickstart/*' --output-file "${INFO_FILE}"
lcov --remove "${INFO_FILE}" '**/tests/*' --output-file "${INFO_FILE}"

genhtml --output-directory "${COVERAGE_DIR}/report" --show-details --no-prefix \
  --demangle-cpp "${INFO_FILE}"
