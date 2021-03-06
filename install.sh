#!/usr/bin/env bash

# check sudo
if [ `whoami` != root ]; then
    echo "Please run this script as root or using sudo"
    exit
fi

## check and set required arg 1 version
if [[ -z "$1" ]]
  then
    echo "No version supplied"
    exit 1
fi
VERSION=$1
OS=linux
ARCH=amd64

wget https://dl.google.com/go/go$VERSION.$OS-$ARCH.tar.gz
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
rm go$VERSION.$OS-$ARCH.tar.gz
