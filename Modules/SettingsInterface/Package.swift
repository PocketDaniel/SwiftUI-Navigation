// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SettingsInterface",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "SettingsInterface",
            targets: ["SettingsInterface"]),
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory", from: "2.1.2"),
        .package(path: "/Core")
    ],
    targets: [
        .target(
            name: "SettingsInterface",
            dependencies: [
                "Factory",
                "Core"
            ]
        ),
    ]
)
