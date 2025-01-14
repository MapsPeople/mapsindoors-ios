// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let mapsindoorsVersion = Version("4.9.0")
let checksum = "349592a570cca339efe3c13d07180545715263df04873f436e46b43675b082a2"

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
