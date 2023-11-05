# Swift CLI Template

Swift CLI templated based on Swift Package Manager.

## How to use

- clone this repo
- perform some magic
- profit

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