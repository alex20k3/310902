// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MyLogarithmProject",
    targets: [
        .executableTarget(
            name: "MainModule",
            dependencies: ["ValidationModule", "LogarithmModule"]
        ),
        .target(
            name: "ValidationModule",
            dependencies: []
        ),
        .target(
            name: "LogarithmModule",
            dependencies: []
        )
    ]
)
