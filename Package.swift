// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "k-swift-publish-blog",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "k-swift-publish-blog",
            targets: ["k-swift-publish-blog"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.9.0"),
    ],
    targets: [
        .executableTarget(
            name: "k-swift-publish-blog",
            dependencies: [
                .product(name: "Publish", package: "publish"),
            ]
        ),
    ]
)
