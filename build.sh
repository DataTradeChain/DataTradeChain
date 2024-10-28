#!/bin/bash

export CGO_ENABLED=0
export GOOS=linux
export GOARCH=amd64

make geth

if [ $? -ne 0 ]; then
    echo "Failed to compile Geth"
    exit 1
fi

mkdir -p $HOME/geth-linux
mv build/bin/geth $HOME/geth-linux/geth-linux

echo "Build completed successfully"
