// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let mapsindoorsVersion = Version("4.24.0")
let checksum = "a07ef366495f8f8d80248a70dcc727ccc4e55fd29b8708b8696fdc6b912fae29"

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
