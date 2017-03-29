#!/bin/sh

 . ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testSuccess()
{
    capture ${BUILDPACK_HOME}/bin/release ${BUILD_DIR}

    assertCapturedSuccess
}
