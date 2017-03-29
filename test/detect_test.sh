#!/bin/sh

 . ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testNoDetect()
{
    capture ${BUILDPACK_HOME}/bin/detect ${BUILD_DIR}

    assertEquals 1 ${rtrn}
}
testDetect()
{
    touch ${BUILD_DIR}/nchan.json

    capture ${BUILDPACK_HOME}/bin/detect ${BUILD_DIR}

    assertEquals 0 ${rtrn}
    assertEquals "nchan-buildpack" "$(cat ${STD_OUT})"
    assertEquals "" "$(cat ${STD_ERR})"
}
