#!/bin/bash

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ROOT_DIR=$($SCRIPT_DIR/../utilities/root_dir.sh)

$ROOT_DIR/projects/fourier/vendor/swiftformat/swiftformat $ROOT_DIR --lint
swift run --package-path $ROOT_DIR/projects/tuist/vendor swiftlint lint --quiet --config $ROOT_DIR/.swiftlint.yml $ROOT_DIR/Sources