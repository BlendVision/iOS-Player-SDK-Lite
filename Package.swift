// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BVPlayerLite",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BVPlayerLite",
            targets: ["BVPlayerLite"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "BVPlayerLite",
            url: "https://github.com/BlendVision/iOS-Player-SDK-Lite/releases/download/3.0.0/BVPlayer-3.0.0.7953271_.WOPSE_Release.xcframework.zip",
            checksum: "9fde22ea0514f53058f2fba38156bde6f1e282d9400694c5570b0ebe6fc7d87b"
        )
    ]
)
