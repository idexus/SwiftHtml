// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftHtml",
    products: [
         .library(
            name: "SwiftHtml",
            targets: ["SwiftHtml"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwiftHtml",
            dependencies: []),
        .testTarget(
            name: "SwiftHtmlTests",
            dependencies: ["SwiftHtml"]),
    ]
)
