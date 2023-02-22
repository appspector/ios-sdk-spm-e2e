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
            name: "AppSpectorSDKE2E",
            targets: ["AppSpectorSDKE2E"])
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
            name: "AppSpectorSDKE2E",
            url: "https://github.com/appspector/ios-sdk/releases/download/1.4.8/AppSpectorSDKE2E.xcframework.zip",
            checksum: "c1a3a56089e9f2ee15521953f6df9ec932693c8309c30be2467e3f0ea46c2fd7"
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
