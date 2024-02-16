// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SelectableText",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "SelectableText",
            targets: ["SelectableText"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin.git", .upToNextMajor(from: "1.3.0"))
    ],
    targets: [
        .target(
            name: "SelectableText"),
        .testTarget(
            name: "SelectableTextTests",
            dependencies: ["SelectableText"]),
    ]
)
