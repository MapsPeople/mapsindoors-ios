// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let mapsindoorsVersion = Version("4.16.0-rc.8")
let checksum = "b781ca226a1ccf7e152f0987c5ec99c82d748028c9c8088523c5042db0e4e464"

let package = Package(
    name: "MapsIndoors",
    platforms: [.iOS(.v15)],
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
