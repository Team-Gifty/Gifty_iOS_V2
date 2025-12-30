import ProjectDescription

let project = Project(
    name: "Gifty_iOS_V2",
    targets: [
        .target(
            name: "Gifty_iOS_V2",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.team.gifty.GiftyiOSV2",
            sources: ["Sources/**"]
        )
    ]
)
