#!/usr/bin/env bash

# Fail on error and unset variables.
set -eu -o pipefail

CWD=$(readlink -e "$(dirname "$0")")
cd "${CWD}/.." || exit $?
source ./docker/common.sh

docker run \
    -it --rm \
    --name "{{cookiecutter.project_name}}-${DEVICE}" \
    -v "${CWD}/..":/workspace/${PROJECT_NAME} \
    ${IMAGE_TAG} 