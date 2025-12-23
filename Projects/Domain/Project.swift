import ProjectDescription

let project = Project(
    name: "Domain",
    targets: [
        .target(
            name: "Domain",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.team.gifty.GiftyiOSV2",
            sources: ["Sources/**"]
        )
    ]
)

