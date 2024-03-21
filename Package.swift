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
//            targets: ["AppSpectorSDKE2E"])
//    ],
//    targets: [
//        .binaryTarget(
//            name: "AppSpectorSDKE2E",
//            url: "https://github.com/appspector/ios-sdk-spm-e2e/releases/download/1.4.5/AppSpectorSDKE2E.xcframework.zip",
//            checksum: "bb978a02890958ca7d40c1b36421bf400ebfb30c9d737becf629c6a7ec83e163"
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
            targets: ["AppSpectorSDK", "AppSpectorSDKE2E"])
    ],
    dependencies: [
        .package(
            name: "themis",
            url: "https://github.com/cossacklabs/themis/releases/download/0.14.0/themis.xcframework.zip",
            from: "0.14.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "AppSpectorSDK",
            url: "https://github.com/appspector/ios-sdk-spm-e2e/releases/download/1.4.9/AppSpectorSDK.xcframework.zip",
            checksum: "60ffd8f91bb8fe05a191a17d2494050ab9410dfa01a609b2a739d7f4110fee6a"
        ),
        .binaryTarget(
            name: "AppSpectorSDKE2E",
            url: "https://github.com/appspector/ios-sdk-spm-e2e/releases/download/1.4.9/AppSpectorSDKE2E.xcframework.zip",
            checksum: "d79761a26aac500f6c0d59afefd3050ef62a16e6e7142cbddc67ad049a5c61ad"
        )
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
//            url: "https://github.com/cossacklabs/themis/releases/download/0.14.0/themis.xcframework.zip",
//            checksum: "182587c9070b94e552816d3cc174d64ea0f0a64d5b19483210bcf3dcac4d2658"
//        )
    ]
)

//let package = Package(
//    name: "AppSpector",
//    platforms: [
//        .iOS(.v13)
//    ],
//    products: [
//        .library(
//            name: "AppSpectorSDKE2E",
////            targets: ["AppSpectorSDKE2ETarget"]
//            targets: ["AppSpectorSDKE2E"]
//        )
//    ],
////    dependencies: [
////        .package(
////            name: "themis",
//////            url: "https://github.com/cossacklabs/themis/releases/download/0.13.12/themis.xcframework.zip",
////            url: "https://github.com/appspector/ios-sdk-spm-e2e/releases/download/1.4.5/themis.xcframework.zip",
////            from: "0.14.0"
////        )
////    ],
//    targets: [
//        .target(
//            name: "AppSpectorSDKE2ETarget",
//            dependencies: [
//                .target(name: "AppSpectorSDKE2EWrapper")
//            ],
//            path: "targets"
//        ),
//        .target(
//            name: "AppSpectorSDKE2EWrapper",
//            dependencies: [
//                .target(name: "AppSpectorSDKE2E"),
//                .target(name: "themis")
////                .product(name: "themis", package: "themis")
//            ],
//            path: "targets"
//        ),
//        .binaryTarget(
//            name: "AppSpectorSDKE2E",
////            path: "targets/AppSpectorSDKE2E.xcframework"
//            url: "https://github.com/appspector/ios-sdk-spm-e2e/releases/download/1.4.5/AppSpectorSDKE2E.xcframework.zip",
//            checksum: "bb978a02890958ca7d40c1b36421bf400ebfb30c9d737becf629c6a7ec83e163"
//        ),
////        .binaryTarget(
////            name: "themis",
////            path: "targets/themis.xcframework"
////        )
//        .binaryTarget(name: "themis",
//                      url: "https://github.com/cossacklabs/themis/releases/download/0.14.0/themis.xcframework.zip",
//                      checksum: "182587c9070b94e552816d3cc174d64ea0f0a64d5b19483210bcf3dcac4d2658")
//    ]
//)
