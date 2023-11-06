#!/bin/bash
echo Usage: $0 NEW_PROJECET_NAME NEW_BINARY_NAME
echo Example: $0 MyCLIProject my-cli
if [ "$#" -ne 2 ]; then
    exit -1
fi
echo NEW_PROJECT_NAME: $1
echo NEW_BINARY_NAME: $2

cp -r template $1

echo Updating files...
utility/srpl $1/ SwiftCLITemplate $1
echo Running utility/srpl $1/ swift-cli-template $2
utility/srpl $1/ swift-cli-template $2

echo Updating filenames...
mv $1/Sources/SwiftCLITemplate $1/Sources/$1
mv $1/Tests/SwiftCLITemplateTests $1/Tests/$1Tests
mv $1/Tests/$1Tests/SwiftCLITemplateTests.swift $1/Tests/$1Tests/$1Tests.swift

echo Done. $1 is ready.