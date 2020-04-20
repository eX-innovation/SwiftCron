// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "SwiftCron",
    products: [
        .library(name: "SwiftCron", targets: ["SwiftCron"]),
    ],
    targets: [
        .target(name: "SwiftCron", dependencies: [], path: "Sources"),
    ]
)
