// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let mapsindoorsVersion = Version("4.9.4-beta.1")
let checksum = "5a14b00a4a8fe28506ac013148fa0280ff021254f4767f87fce57381d9017273"

let package = Package(
    name: "MapsIndoors",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "MapsIndoors", targets: ["MapsIndoors"]),
    ],
    targets: [
        .binaryTarget(
            name: "MapsIndoors",
            url: "https://github.com/MapsPeople/MapsIndoors-SDK-iOS/releases/download/\(mapsindoorsVersion)/MapsIndoors.xcframework.zip",
            checksum: checksum
        ),
    ]
)
