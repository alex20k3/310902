// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MyProject",
    targets: [
        .executableTarget(
            name: "MainModule",
            dependencies: ["ValidationModule", "DivisibilityModule"]
        ),
        .target(
            name: "ValidationModule",
            dependencies: []
        ),
        .target(
            name: "DivisibilityModule",
            dependencies: []
        )
    ]
)
