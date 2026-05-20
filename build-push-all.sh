#!/usr/bin/env bash

set -xeuo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
configs_path="${script_dir}/configs"

find "${configs_path}/" -mindepth 1 -maxdepth 1 -type d | while IFS= read -r path; do
  image="$(basename "$path")"
  echo "Building and pushing image: $image"
  ./build-push.sh "$image"
done
