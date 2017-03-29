#!/usr/bin/env bash
# fake_build <fake_path>

fake_path=$1
if [ -f "$fake_path" ]; then
    echo '====== Removing old fake results'
    rm -rf $fake_path
fi
echo '====== Making fake dir'
mkdir -p $fake_path
touch $fake_path/nchan.conf.erb

echo '====== bin/detect'
./bin/detect $fake_path
echo '====== bin/compile'
./bin/compile $fake_path $fake_path
echo '====== bin/release'
./bin/release $fake_path
