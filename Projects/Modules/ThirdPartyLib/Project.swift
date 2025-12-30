import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.makeModule(
    name: "ThirdPartyLib",
    product: .staticFramework,
    dependencies: [
        .PackageType.SnapKit,
        .PackageType.Then,
        .PackageType.RxFlow,
        .PackageType.RxSwift,
        .PackageType.RxCocoa,
        .PackageType.Kingfisher,
        .PackageType.Moya,
        .PackageType.RxMoya,
        .PackageType.RxGesture,
        .PackageType.Swinject,
        .PackageType.Lottie,
        .PackageType.FSCalendar,
        .PackageType.RxDataSources,
        .PackageType.ReactorKit,
        .PackageType.Starscream,
        .PackageType.Siren
    ]
)
