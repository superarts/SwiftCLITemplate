#!/bin/bash
echo Usage: $0 NEW_PROJECET_NAME NEW_BINARY_NAME
echo Example: $0 MyCLIProject my-cli
if [ "$#" -ne 3 ]; then
    exit -1
fi
cp -r template $1
utility/srpl $1/ SwiftCLITemplate $1 -s
utility/srpl $1/ swift-cli-template $2 -s