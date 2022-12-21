#!/usr/bin/env bash

set -ex

./build.sh "${1}"
./push.sh "${1}"
