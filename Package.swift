// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AppSpector",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AppSpector",
            targets: ["AppSpectorSDK"])
    ],
    // dependencies: [
    //     .package(
    //         name: "themis",
    //         url: "https://github.com/cossacklabs/themis/releases/download/0.14.0/themis.xcframework.zip",
    //         from: "0.14.0"
    //     )
    // ],
    targets: [
        .binaryTarget(
            name: "AppSpectorSDK",
            url: "https://github.com/appspector/ios-sdk-spm-e2e/releases/download/1.4.10/AppSpectorSDK.xcframework.zip",
            checksum: "82cd810ec4c9702c6eb35a3495aa3d40c00a4a81fc663d0956e20b4e01fa7dd9"
        )
        // .binaryTarget(
        //     name: "AppSpectorSDKE2E",
        //     url: "https://github.com/appspector/ios-sdk-spm-e2e/releases/download/1.4.10/AppSpectorSDKE2E.xcframework.zip",
        //     checksum: "e60726866590f5f74a51409014157f70fbe5d58c3619039af7cd362b09b2bd63"
        // )
    ]
)