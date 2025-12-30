import ProjectDescription

let project = Project(
    name: "Core",
    targets: [
        .target(
            name: "Core",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.team.gifty.GiftyiOSV2",
            sources: ["Sources/**"]
        )
    ]
)


