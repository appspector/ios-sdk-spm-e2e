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
//            name: "themis",
            url: "https://github.com/cossacklabs/themis/releases/download/0.13.12/themis.xcframework.zip",
//            branch: "master"
            from: "0.13.12"
        )
    ],
    targets: [
        .binaryTarget(
            name: "AppSpectorSDKE2E",
            url: "https://github.com/appspector/ios-sdk-spm-e2e/blob/416535a169fd7d56ab2dfe9acb2bc961c92a2468/AppSpectorSDKE2E.xcframework.zip",
            checksum: "a98725040f7598bee89e267510f3d7bc9b9b5b373a53e688c70a007ca2f44f23"
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
