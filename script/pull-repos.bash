#!/bin/bash

set -e
echo "pull-repos.bash: START"
pushd $WS_HUMBLE

vcs import \
  --recursive \
  --input ./src.repos \
  ./src
vcs pull \
  ./src

find ./src/ -name \*.repos -exec vcs import --recursive --input {} ./src \;
popd # $WS_HUMBLE
echo "pull-repos.bash: DONE"