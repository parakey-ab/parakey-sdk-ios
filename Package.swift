// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ParakeySDK",
    platforms: [
        .iOS("15.1")
    ],
    products: [
        .library(
            name: "ParakeySDK",
            targets: ["ParakeySDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ParakeySDK",
            path: "frameworks/ParakeySDK.xcframework"
        )
    ]
)
