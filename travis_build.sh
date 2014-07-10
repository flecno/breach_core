#!/bin/bash

if [ $TRAVIS_OS_NAME = "linux" ]
then
  wget https://github.com/breach/releases/raw/master/exo_browser/v0.6.1916/exo_browser-v0.6.1916-linux-x64.tar.gz
  make dist_linux ARCH=x64 EXO_BROWSER=./exo_browser-v0.6.1916-linux-x64.tar.gz NO_GPG_SIGN=true;
else
  wget https://github.com/breach/releases/raw/master/exo_browser/v0.6.1916/exo_browser-v0.6.1916-darwin-ia32.tar.gz
  make dist_darwin ARCH=ia32 EXO_BROWSER=./exo_browser-v0.6.1916-linux-x64.tar.gz NO_GPG_SIGN=true;
fi
