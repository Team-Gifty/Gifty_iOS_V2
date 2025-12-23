import ProjectDescription

let project = Project(
    name: "Data",
    targets: [
        .target(
            name: "Data",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.team.gifty.GiftyiOSV2",
            sources: ["Sources/**"]
        )
    ]
)

