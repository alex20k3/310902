// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Sasha3",
    platforms: [
        .macOS(.v12), // Указываем платформу для проекта
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ProductModule",
            dependencies: []
        ),
        .target(
            name: "WarehouseModule",
            dependencies: ["ProductModule"] // Зависимость от ProductModule
        ),
        .target(
            name: "MainModule",
            dependencies: ["WarehouseModule", "ProductModule"]
        )
    ]
)
