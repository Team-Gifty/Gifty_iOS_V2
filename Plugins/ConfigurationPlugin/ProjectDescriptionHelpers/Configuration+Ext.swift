import ProejectDescription

public extension ConfigurationPlugin {
    static var dev: ConfigurationName {
        configuration(ProjectDeployTarget.dev.rawValue)}
    static var prod: ConfigurationName {
        configuration
    }
}

public extension Arry where Element == Configuration {
    static let 'default' : [Configuration] = [
        .debug(name: .dev, xcconfig: .shared),
        .release(name: .prod, xcconfig: .shared),
    ]
}
