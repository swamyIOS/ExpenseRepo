// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NetworkModule",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "NetworkModule", targets: ["NetworkModule"])
    ],
    targets: [
        // ObjC Code Target
        .target(
            name: "ObjCNetworkClient",
            publicHeadersPath: "include"
        ),

        // Swift Wrapper Target
        .target(
            name: "NetworkModule",
            dependencies: ["ObjCNetworkClient"]
        )
    ]
)
