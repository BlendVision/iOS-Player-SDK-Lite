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
            url: "https://github.com/BlendVision/iOS-Player-SDK/releases/download/2.5.2/KKSPlayer-2.5.2.45-WOPSE.xcframework.zip",
            checksum: "f60503344ab40ecdb179c903c4dc718951cf9b88ee7bcfba5bf55d4d428e1056"
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
