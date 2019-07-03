#!/usr/bin/env bash

set -ex

./build.sh $1 $2
./push.sh $1 $2
