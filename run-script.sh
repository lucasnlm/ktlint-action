#!/bin/sh

set -o pipefail

echo KtLint version: "$(ktlint --version)"

./ktlint

