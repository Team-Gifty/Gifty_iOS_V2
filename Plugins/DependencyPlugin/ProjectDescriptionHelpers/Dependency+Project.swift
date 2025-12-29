import ProjectDescription

public extension TargetDependency {
    struct Projects {}
    struct Module {}
}

public extension TargetDependency.Projects {
    static let core = Project(name: "Core")
    static let data = Project(name: "Data")
    static let domain = Project(name: "Domain")
    static let flow = Project(name: "Flow")
    static let presentation = Project(name: "Presentation")
    
    static func project(name: String) -> TargetDependency {
        return .project(
            target: name,
            path: .relativeToRoot("Projects/\(name)")
        )
    }
}

public extension TargetDependency.Module {
    static let appNetwork = module(name: "AppNetwork")
    static let designSystem = module(name: "DesignSystem")
    static let thirdPartyLib = module(name: "ThirdPartyLib")
    
    static func module(name: String) -> TargetDependency {
        return .project(
            target: name,
            path: .relativeToRoot("Projects/Modules/\(name)")
        )
    }
}
