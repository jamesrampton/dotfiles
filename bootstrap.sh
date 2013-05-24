#!/bin/bash
git pull
cp ./.zlogin ~/.zlogin
./osx_defaults.sh
. ~/.zlogin
