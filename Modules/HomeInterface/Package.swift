// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HomeInterface",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(name: "HomeInterface", targets: ["HomeInterface"]),
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory", from: "2.1.2"),
        .package(path: "/Core")
    ],
    targets: [
        .target(
            name: "HomeInterface",
            dependencies: [
                "Factory",
                "Core"
            ]
        ),
    ]
)
