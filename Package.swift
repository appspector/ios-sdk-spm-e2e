// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AppSpector",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AppSpectorSDKE2E",
            targets: ["AppSpectorUmbrella"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/cossacklabs/themis/releases/download/0.13.12/themis.xcframework.zip",
            from: "0.13.12"
        )
    ],
    targets: [
        .binaryTarget(
            name: "AppSpectorSDKE2E",
            url: "https://github.com/appspector/ios-sdk-spm-e2e/releases/download/1.4.5/AppSpectorSDKE2E.xcframework.zip",
            checksum: "bb978a02890958ca7d40c1b36421bf400ebfb30c9d737becf629c6a7ec83e163"
        ),
        .binaryTarget(
            name: "themis",
            url: "https://github.com/cossacklabs/themis/releases/download/0.13.12/themis.xcframework.zip",
            checksum: "c74f65d4918884220efe99c3195001fa8aabc8030ad85f8ef30d2bfed11065a3"
        ),
        .target(
            name: "AppSpectorUmbrella",
            dependencies: [
                .target(name: "AppSpectorSDKE2E"),
                .target(name: "themis")
            ]
        )
    ]
)
