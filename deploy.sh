#!/bin/sh

# Stop on failure
set -e

rm -rf public
rm -rf docs

hugo version
hugo
mv public docs

# TODO: add, commit, push the above