#!/bin/sh

set -o pipefail

echo Using KtLint version: "$(ktlint --version)"

ktlint --relative "$@"
