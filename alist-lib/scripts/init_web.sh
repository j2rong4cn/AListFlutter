#!/bin/bash

curl -L https://codeload.github.com/alist-org/web-dist/tar.gz/refs/heads/dev -o web-dist-dev.tar.gz
tar -zxvf web-dist-dev.tar.gz
rm -rf web-dist-dev.tar.gz
rm -rf ../public/dist
mv -f web-dist-dev/dist ../public