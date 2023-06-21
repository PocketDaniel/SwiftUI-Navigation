// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Core",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "Core",
            targets: ["Core"]),
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory", from: "2.1.2")
    ],
    targets: [
        .target(
            name: "Core",
            dependencies: [
                "Factory"
            ])
    ]
)
