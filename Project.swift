import ProjectDescription

let project = Project(
    name: "Gifty_V2",
    targets: [
        .target(
            name: "Gifty_V2",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Gifty-V2",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Gifty_V2/Sources/**"],
            resources: ["Gifty_V2/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "Gifty_V2Tests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.Gifty-V2Tests",
            infoPlist: .default,
            sources: ["Gifty_V2/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Gifty_V2")]
        ),
    ]
)
