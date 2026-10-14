// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let mapsindoorsVersion = Version("4.24.0-alpha.2")
let checksum = "4f6e4546c0fb8a26f7fac0bc3182a867fc91165ad438bebab574a8f5101e758f"

let package = Package(
    name: "MapsIndoors",
    platforms: [.iOS(.v16)],
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
