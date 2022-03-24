#!/usr/bin/env bash

set -ex

REPO_NAME="${1}"

shift

docker run -ti --rm "piotrekr/${REPO_NAME}" "${@}"
