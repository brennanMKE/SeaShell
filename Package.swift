// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SeaShell",
    products: [
        .library(
            name: "SeaShell",
            targets: ["SeaShell"]),
        .library(
            name: "BasicMath",
            targets: ["BasicMath"]),
    ],
    targets: [
        .target(
            name: "SeaShell",
            dependencies: ["BasicMath"]),
        .target(
            name: "BasicMath",
            publicHeadersPath: "include"),
        .testTarget(
            name: "SeaShellTests",
            dependencies: ["SeaShell"]),
    ]
)
