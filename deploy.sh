#!/bin/sh

# Stop on failure
set -e

rm -rf public
rm -rf docs

hugo version
hugo
mv public docs

git add docs

git commit -m "rebuilding site $(date)"
