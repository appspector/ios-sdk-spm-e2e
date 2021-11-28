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
            targets: ["AppSpectorSDKE2E"])
    ],
    dependencies: [
        .package(
            name: "themis",
            url: "https://github.com/cossacklabs/themis",
            "0.13.12" ..< "1.0.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "AppSpectorSDKE2E",
            url: "https://github.com/appspector/ios-sdk/releases/download/1.4.5/AppSpectorSDKE2E.xcframework.zip",
            checksum: "78064690dcd0a7127ac8e013ec29ca0b4ec61620b31921d181b505059c3520b8"
        )
    ]
)
