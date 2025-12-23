import ProjectDescription

let project = Project(
    name: "Flow",
    targets: [
        .target(
            name: "Flow",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.team.gifty.GiftyiOSV2",
            sources: ["Sources/**"]
        )
    ]
)
