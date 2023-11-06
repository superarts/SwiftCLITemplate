#!/bin/bash
echo Usage: $0 NEW_PROJECET_NAME NEW_BINARY_NAME
echo Example: $0 MyCLIProject my-cli
cp -r template $1
sprl $1/ SwiftCLITemplate $1 -s
sprl $1/ swift-cli-template $2 -s