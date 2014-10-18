#!/bin/bash

pushd $(dirname $0) >/dev/null

ln -s laptop.local ~/.laptop.local

bash <(curl -s https://raw.githubusercontent.com/thoughtbot/laptop/master/mac) 2>&1 | tee ~/laptop.log

popd > /dev/null
