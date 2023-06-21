// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Home",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(name: "Home", targets: ["Home"])
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory", from: "2.1.2"),
        .package(path: "/HomeInterface"),
        .package(path: "/Core")
    ],
    targets: [
        .target(
            name: "Home",
            dependencies: [
                "Factory",
                "HomeInterface",
                "Core"
            ]
        )
    ]
)
