# svt-av1 + Xcode

[![CI Status](http://img.shields.io/travis/SDWebImage/svt-av1-Xcode.svg?style=flat)](https://travis-ci.org/SDWebImage/svt-av1-Xcode)
[![Version](https://img.shields.io/cocoapods/v/svt-av1.svg?style=flat)](http://cocoapods.org/pods/svt-av1)
[![License](https://img.shields.io/cocoapods/l/svt-av1.svg?style=flat)](http://cocoapods.org/pods/svt-av1)
[![Platform](https://img.shields.io/cocoapods/p/svt-av1.svg?style=flat)](http://cocoapods.org/pods/svt-av1)
[![SwiftPM compatible](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg)](https://swift.org/package-manager/)

A wrapper for [svt-av1](https://gitlab.com/AOMediaCodec/SVT-AV1) + Xcode project.
This enables CocoaPods && SwiftPM support.

This repo also including the CocoaPods's spec file to use svt-av1.

## Requirements

+ iOS 8
+ macOS 10.10
+ tvOS 9.0
+ watchOS 2.0

## Installation

### CocoaPods

svt-av1 is available through [CocoaPods](https://github.com/CocoaPods/CocoaPods).

```
pod 'svt-av1'
```

### SwiftPM

svt-av1 is available through [Swift Package Manager](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg).

```swift
let package = Package(
    dependencies: [
        .package(url: "https://github.com/SDWebImage/svt-av1-Xcode", from: "0.8.7")
    ],
    // ...
)
```

## Usage

Use svt-av1 as you would normally, this is just a repo that adds an Xcode proj.

For Swift Package Manager user, it's recommended to use the modular import instead of C headers.

+ Objective-C

```objective-c
@import svt-av1;
// or if you don't use module
#import <svt-av1/EbSvtAv1.h>
```

+ Swift

```swift
import svt-av1
```

## License

svt-av1 is available under the [BSD 3-Clause Clear License](https://gitlab.com/AOMediaCodec/SVT-AV1/-/blob/master/LICENSE.md).


