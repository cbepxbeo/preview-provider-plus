// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "PreviewProviderPlus",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "PreviewProviderPlus",
            targets: ["PreviewProviderPlus"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "PreviewProviderPlus",
            dependencies: [],
            path: "Sources"
        ),
    ],
    swiftLanguageVersions: [ .version("5.1") ]
)
