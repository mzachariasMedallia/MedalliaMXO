// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  
//  Copyright © 2023 Medallia. Use subject to licensing terms.

import PackageDescription

let package = Package(
    name: "medallia-mxo",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "medallia-mxo",
            targets: ["MedalliaMXO_Wrapper"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/mzachariasMedallia/BridgeSDK.git",
            "1.0.0" ..< "4.0.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "MedalliaMXO",
            path: "MedalliaMXO.xcframework"
        ),
        .target(
            name: "MedalliaMXO_Wrapper",
            dependencies: [
                .target(
                    name: "MedalliaMXO",
                    condition: .when(platforms: [.iOS])
                ),
                .product(
                    name: "BridgeSDK",
                    package: "BridgeSDK",
                    condition: .when(platforms: [.iOS])
                )
            ],
            path: "MedalliaMXO_Wrapper"
        )
    ]
)
