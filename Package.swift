// swift-tools-version:5.3
import PackageDescription

//let package = Package(
//    name: "AppSpector",
//    platforms: [
//        .iOS(.v13)
//    ],
//    products: [
//        .library(
//            name: "AppSpectorSDKE2E",
//            targets: ["AppSpectorUmbrella"])
//    ],
//    dependencies: [
//        .package(
//            name: "themis",
//            url: "https://github.com/cossacklabs/themis/releases/download/0.13.12/themis.xcframework.zip",
//            from: "0.13.12"
//        )
//    ],
//    targets: [
//        .binaryTarget(
//            name: "AppSpectorSDKE2E",
//            url: "https://github.com/appspector/ios-sdk-spm-e2e/releases/download/1.4.5/AppSpectorSDKE2E.xcframework.zip",
//            checksum: "bb978a02890958ca7d40c1b36421bf400ebfb30c9d737becf629c6a7ec83e163"
//        ),
//        .target(
//            name: "AppSpectorUmbrella",
//            dependencies: [
//                .target(name: "AppSpectorSDKE2E"),
//                .target(name: "themis")
//            ],
//            path: "./"
//        ),
//        .binaryTarget(
//            name: "themis",
//            url: "https://github.com/cossacklabs/themis/releases/download/0.13.12/themis.xcframework.zip",
//            checksum: "c74f65d4918884220efe99c3195001fa8aabc8030ad85f8ef30d2bfed11065a3"
//        )
//    ]
//)

let package = Package(
    name: "AppSpector",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AppSpector",
            targets: ["AppSpectorSDKE2ETarget"])
    ],
    dependencies: [
        .package(
            name: "themis",
//            url: "https://github.com/cossacklabs/themis/releases/download/0.13.12/themis.xcframework.zip",
            url: "https://github.com/appspector/ios-sdk-spm-e2e/releases/download/1.4.5/themis.xcframework.zip",
            from: "0.14.0"
        )
    ],
    targets: [
        .target(
            name: "AppSpectorSDKE2ETarget",
            dependencies: [
                .target(name: "AppSpectorSDKE2EWrapper")
            ]
        ),
        .target(
            name: "AppSpectorSDKE2EWrapper",
            dependencies: [
                .target(name: "AppSpectorSDKE2E"),
                .product(name: "themis", package: "themis")
            ]
        ),
        .binaryTarget(
            name: "AppSpectorSDKE2E",
            url: "https://github.com/appspector/ios-sdk-spm-e2e/releases/download/1.4.5/AppSpectorSDKE2E.xcframework.zip",
            checksum: "bb978a02890958ca7d40c1b36421bf400ebfb30c9d737becf629c6a7ec83e163"
        )
    ]
)
