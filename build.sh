#!/usr/bin/env bash

set -ex

docker build --no-cache --tag="piotrekr/${1}" "./configs/${1}"
