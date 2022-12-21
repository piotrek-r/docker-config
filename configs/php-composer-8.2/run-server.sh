#!/usr/bin/env bash

set -ex

/usr/bin/php -S 0:8080 -t public "$@" index.php
