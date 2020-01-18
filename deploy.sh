#!/bin/sh

# Stop on failure
set -e

rm -rf public
rm -rf docs

hugo version
hugo
mv public docs

printf "podcast.netzbegruenung.de" >> docs/CNAME

# TODO: add, commit, push the above
