import ProjectDescription

let project = Project(
    name: "Gifty_iOS_V2",
    targets: [
        .target(
            name: "Gifty_iOS_V2",
            destinations: .iOS,
            product: .app,
            bundleId: "com.team.gifty.GiftyiOSV2",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Gifty_iOS_V2/Sources/**"],
            resources: ["Gifty_iOS_V2/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "Gifty_iOS_V2Tests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.team.gifty.GiftyiOSV2Tests",
            infoPlist: .default,
            sources: ["Gifty_iOS_V2/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Gifty_iOS_V2")]
        ),
    ]
)
