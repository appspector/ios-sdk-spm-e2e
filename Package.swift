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
        // .binaryTarget(
        //     name: "AppSpectorSDK",
        //     url: "https://github.com/appspector/ios-sdk-spm-e2e/releases/download/1.4.10/AppSpectorSDK.xcframework.zip",
        //     checksum: "82cd810ec4c9702c6eb35a3495aa3d40c00a4a81fc663d0956e20b4e01fa7dd9"
        // ),
        .binaryTarget(
            name: "AppSpectorSDKE2E",
            url: "https://github.com/appspector/ios-sdk-spm-e2e/releases/download/1.4.10/AppSpectorSDKE2E.xcframework.zip",
            checksum: "e60726866590f5f74a51409014157f70fbe5d58c3619039af7cd362b09b2bd63"
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
