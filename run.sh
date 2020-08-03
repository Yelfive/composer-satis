#!/usr/bin/env bash

set -e

_ROOT=$(cd `dirname $0`; pwd)

if [ $# -eq 0 ];then
    cat <<USG
Usage: ${0} [COMMAND] [ARGVS

Command:
    - build
    - purge
USG
    exit
fi

function run() {
    user=$(id -u):$(id -g)
    (
        set -x
        docker run --rm --init -i -u ${user} -v ${_ROOT}/build:/build -v ${_ROOT}/composer:/composer --entrypoint /usr/local/bin/php composer/satis /satis/bin/satis $*
    )
}

# configuraton-file output-directory
# mounted at cwd
_FILES="satis.json output"

run $1 $_FILES ${*:2}

if [ $1 = 'build' ];then
    (cd ${_ROOT}/build/output && . ${_ROOT}/install-composer.sh)
fi
