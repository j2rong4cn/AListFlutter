#!/bin/bash

GIT_REPO="https://github.com/j2rong4cn/alist.git"
TAG_NAME="main"

echo "AList - ${TAG_NAME}"
rm -rf ./src
unset GIT_WORK_TREE
git clone --branch "$TAG_NAME" --depth 1 "$GIT_REPO" ./src
rm -rf ./src/.git

mv -f ./src/* ../
rm -rf ./src

cd ../
go mod edit -replace github.com/djherbis/times@v1.6.0=github.com/jing332/times@latest
