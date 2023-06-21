// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Main",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "Main",
            targets: ["Main"]),
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory", from: "2.1.2"),
        .package(path: "/MainInterface"),
        .package(path: "/Core"),
        .package(path: "/SettingsInterface"),
        .package(path: "/HomeInterface")
    ],
    targets: [
        .target(
            name: "Main",
            dependencies: [
                "Factory",
                "MainInterface",
                "Core",
                "SettingsInterface",
                "HomeInterface"
            ]
        ),
    ]
)
