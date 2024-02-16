# SelectableText

A view that displays one or more lines of read-only selectable text.

## Overview

`SelectableText` is a SwiftUI view designed to present text as read-only and selectable, filling a gap left by SwiftUI's standard `Text` view which does not support text selection. It defaults to using a body font appropriate for the platform, but its true utility comes from its support for attributed text. This allows for detailed customization, enabling the direct application of varied text styles—such as font weights, sizes, and colors—within the text's attributes.

## Documentation

You can find the documentation here: [https://kevinhermawan.github.io/SelectableText/documentation/selectabletext](https://kevinhermawan.github.io/SelectableText/documentation/selectabletext)

## Installation

You can add `SelectableText` as a dependency to your project using Swift Package Manager by adding it to the dependencies value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/kevinhermawan/SelectableText.git", .upToNextMajor(from: "1.0.0"))
]
```

Alternatively, in Xcode:

1. Open your project in Xcode.
2. Click on `File` -> `Swift Packages` -> `Add Package Dependency...`
3. Enter the repository URL: `https://github.com/kevinhermawan/SelectableText.git`
4. Choose the version you want to add. You probably want to add the latest version.
5. Click `Add Package`.
