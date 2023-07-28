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
            url: "https://github.com/BlendVision/iOS-Player-SDK/releases/download/2.5.0/KKSPlayer-2.5.0.43-WOPSE.xcframework.zip",
            checksum: "8ec3e93f9b296dab476243357d3c3dfba0d33cabee20fa42dbf9c08c72646b70"
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
