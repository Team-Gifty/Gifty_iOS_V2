import ProjectDescription
import EnvironmentPlugin

let workspace = Workspace(
    name: env.appName,
    projects: [
        "Projects/App",
        "Projects/Core",
        "Projects/Domain",
        "Projects/Data",
        "Projects/Presentation",
        "Projects/Flow"
    ]
)

