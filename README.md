# Swift CLI Template

Swift CLI template based on Swift Package Manager, with a simple script to generate your CLI project.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Contents

- [How to use](#how-to-use)
- [FAQ](#faq)
  - [Why CLI?](#why-cli)
  - [Why Swift CLI?](#why-swift-cli)
  - [Why `SPM`?](#why-spm)
  - [Why those dependencies?](#why-those-dependencies)
  - [Why Makefile?](#why-makefile)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## How to use

- Clone this repo.
- Open terminal and `cd DOWNLOADED_REPO_PATH/SwiftCLITempalte`.
- Run `./generate-cli-project.sh` for help.
  - Example: run `./generate-cli-project.sh MyCLIProject my-cli`
- `cd MyCLIProject` and write your CLI logic.
  - `make` to build and run your CLI project.
  - `make test` to run unit tests.

## FAQ

### Why CLI?

- Faster to write? ...not really faster than writing GUI in Delphi in 1998.
- Easier to use? ...not for young developers grew up with Xcode.
- Cross-platform? Yes, definitely easier to support multiple platforms than GUI.
- CI/CD? DevOps? ...yes, can be used anywhere. There may not be GUI, but there is always a shell environment.
- ...and it's actually faster to write and easier to use if you are used to it.

### Why Swift CLI?

- Swift is a modem, type safe, protocol oriented language that promotes good architectural design and coding practice.
- First class citizen in macOS, decent support in Linux.
- [Swift Argument Parser](https://github.com/apple/swift-argument-parser) is a great library for CLI.
- In macOS, you can invoke Apple's A/V processing, Machine Learning frameworks, etc.
- ...as an iOS developer, you already unlocked "Lv1 swift" skill, so why not use it?

### Why `SPM`?

Or why not Xcode? First of all, even in 2023, `SPM` still feels worse than `Cocoapods`. But it's good enough for CLI usage.

So the main point is, Xcode feels too "heavy" for most CLI usage. And Xcode project files look ugly. Tools like [tuist](https://tuist.io/) can help, but those are more things to learn.

Having these being said, Xcode allows you to debug in GUI if needed. If that's the case, use [something else](https://github.com/dfreniche/SwiftCLITemplate) instead.

### Why those dependencies?

- Swift argument parser is a must-have for CLI as long as you need argument parsing, which is 99% the case.
- After using Quick and Nimble, you really can't go back to `XCTest`. Who doesn't love pretty codes?

### Why Makefile?

- Feel free to run `swift build` and so on, it's the same thing. However `make` is faster to type and already became my muscle memory.
- You don't need to learn the whole `make` system to use it. Like `vim`, even knowing 5% of `make` will save you a lot of time in CLI world.

### Why fixed dependency / limited features / generator via shell script... ?

This is why I make this project open source! Feel free to make your own changes.

## TODO

Here are some to-do items from myself:

- [ ] Replace the generator script with a Swift CLI utility.
- [ ] Setup dependency via CLI argument.
- [ ] Setup Swift version via CLI argument.