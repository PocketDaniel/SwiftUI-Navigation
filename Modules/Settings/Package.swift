// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Settings",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(name: "Settings", targets: ["Settings"])
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory", from: "2.1.2"),
        .package(path: "/SettingsInterface"),
        .package(path: "/Core")
    ],
    targets: [
        .target(
            name: "Settings",
            dependencies: [
                "Factory",
                "SettingsInterface",
                "Core"
            ]
        )
    ]
)
