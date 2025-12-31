// swift-tools-version: 6.0
import PackageDescription

#if TUIST
    import struct ProjectDescription.PackageSettings

    let packageSettings = PackageSettings(
        // Customize the product types for specific package product
        // Default is .staticFramework
        // productTypes: ["Alamofire": .framework,]
        productTypes: [:]
    )
#endif

let package = Package(
    name: "Gifty_V2",
    dependencies: [
        // Add your own dependencies here:
        // .package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0"),
        // You can read more about dependencies here: https://docs.tuist.io/documentation/tuist/dependencies
    ]
)


// swift-tools-version: 6.1

import PackageDescription

#if TUIST
    import ProjectDescription
    import ProjectDescriptionHelpers
    import EnvironmentPlugin

    let packageSettings = PackageSettings(
        productTypes: [
            "RxSwift": .framework,
            "Starscream": .framework
        ],
        baseSettings: .settings(
            base: env.baseSetting,
            configurations: [
                .debug(name:  "DEV"),
                .release(name: "PROD")
            ]
        )
    )
#endif

let package = Package(
    name: "GiftyPackage",
    platforms: [.iOS(.v16)],
    dependencies: [
        .package(url: "https://github.com/Moya/Moya.git", from: "15.0.3"),
        .package(url: "https://github.com/ReactiveX/RxSwift", from: "6.7.1"),
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.1"),
        .package(url: "https://github.com/devxoul/Then.git", from: "3.0.0"),
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "7.4.1"),
        .package(url: "https://github.com/RxSwiftCommunity/RxFlow.git", from: "2.13.0"),
        .package(url: "https://github.com/RxSwiftCommunity/RxGesture", from: "4.0.0"),
        .package(url: "https://github.com/Swinject/Swinject.git", from: "2.8.0"),
        .package(url: "https://github.com/airbnb/lottie-ios", from: "4.3.3"),
        .package(url: "https://github.com/WenchaoD/FSCalendar.git", from: "2.8.4"),
        .package(url: "https://github.com/RxSwiftCommunity/RxDataSources.git", from: "5.0.0"),
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "4.0.6"),
        .package(url: "https://github.com/ReactorKit/ReactorKit.git", from: "3.0.0"),
        .package(url: "https://github.com/ArtSabintsev/Siren.git", from: "6.0.0")
    ],
    targets: [
        .target(
            name: "GiftyKPackage",
            dependencies: [
                "RxSwift",
                .product(name: "RxCocoa", package: "RxSwift"),
                "Moya",
                .product(name: "RxMoya", package: "Moya"),
                "Kingfisher",
                "RxGesture",
                "Swinject",
                "RxFlow",
                "Lottie",
                "FSCalendar",
                "RxDataSources",
                "ReactorKit",
                "Starscream",
            ]
        )
    ]
)
