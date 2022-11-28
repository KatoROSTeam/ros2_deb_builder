#!/bin/bash

set -e
echo "pool-deb.bash: START"

find $REPOS_DIR/pool/main/ -name \*.deb -exec rm {} \;
find $WS_GALACTIC/src/ -name \*.deb -exec cp {} $REPOS_DIR/pool/main/ \;
find $EXT_DIR -name \*.deb -exec cp {} $REPOS_DIR/pool/main/ \;

echo "pool-deb.bash: DONE"