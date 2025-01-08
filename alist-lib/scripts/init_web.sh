#!/bin/bash

if [ -n "$1" ]; then
  curl -L https://codeload.github.com/alist-org/web-dist/tar.gz/refs/heads/dev -o web-dist-dev.tar.gz
  tar -zxvf web-dist-dev.tar.gz
  rm -rf web-dist-dev.tar.gz
  rm -rf ../public/dist
  mv -f web-dist-dev/dist ../public
  exit
fi

curl -LO https://github.com/alist-org/alist-web/releases/latest/download/dist.tar.gz
tar -zxvf dist.tar.gz
rm -rf dist.tar.gz
rm -rf ../public/dist
mv -f dist ../public