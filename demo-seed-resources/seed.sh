#!/bin/bash

set -e 

if [ -n "$1" ]; then
TARGET_DIR=$1
else
  echo "usage: target-dir"
  exit -1
fi

mkdir $TARGET_DIR

cp -r .claude $TARGET_DIR/.
cp -r docs $TARGET_DIR/.
cp -r my-resources $TARGET_DIR/.

cp build-palindrome-front-end.sh $TARGET_DIR/.
cp build-palindrome-back-end.sh $TARGET_DIR/.
cp commit-phase0-prime.sh $TARGET_DIR/.
cp run-app.sh $TARGET_DIR/.
cp test-app.sh $TARGET_DIR/.
cp phase0-prime-prompt.txt $TARGET_DIR/.

HOME_DIR=$PWD
cd $TARGET_DIR
git init
git add .
git commit -m "initial resources"

cd $HOME_DIR
echo "Ready."
