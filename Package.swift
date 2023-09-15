// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BVPlayerCore",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BVPlayerCore",
            targets: ["BVPlayerCore"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "BVPlayerCore",
            url: "https://github.com/BlendVision/iOS-Player-SDK/releases/download/2.6.0/KKSPlayer-2.6.0.46-WOPSE.xcframework.zip",
            checksum: "c079a591dea92c2534d5b85b01a8c30f6adaf0ddf7ec993df5201ee544a1cec6"
        ),
        .binaryTarget(
            name: "SwiftWebVTT",
            path: "Sources/BVPlayer/SDKs/SwiftWebVTT.xcframework"
        ),
        .binaryTarget(
            name: "HLSParser",
            path: "Sources/BVPlayer/SDKs/HLSParser.xcframework"
        )
    ]
)
