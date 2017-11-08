#!/usr/bin/env bash
docker build --no-cache --tag=piotrekr/$1:$2 ./configs/$1-$2
