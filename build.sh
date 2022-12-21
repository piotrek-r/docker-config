#!/usr/bin/env bash

set -ex

docker build --pull --tag="piotrekr/${1}:latest" "./configs/${1}"
