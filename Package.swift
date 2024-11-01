// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let mapsindoorsVersion = Version("4.6.3-beta.4")
let checksum = "b65330944b131335a4f1983d1d86bef16d9aad60e97ff792876e43035c35849e"

let package = Package(
    name: "MapsIndoors",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "MapsIndoors",
            targets: ["MapsIndoorsWrapper"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MapsIndoors",
            url: "https://github.com/MapsPeople/MapsIndoors-SDK-iOS/releases/download/4.6.2/MapsIndoors.xcframework.zip",
            checksum: checksum
        ),
        .target(
            name: "MapsIndoorsWrapper",
            dependencies: [
                "MapsIndoors",
            ]
        ),
    ]
)
