// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "NotificationSenderProject",
    targets: [
        .executableTarget(
            name: "MainModule",
            dependencies: ["NotificationModule", "DeliveryMethodsModule", "NotificationProtocolsModule"]
        ),
        .target(
            name: "NotificationModule",
            dependencies: ["DeliveryMethodsModule", "NotificationProtocolsModule"]
        ),
        .target(
            name: "DeliveryMethodsModule",
            dependencies: ["NotificationProtocolsModule"]
        ),
        .target(
            name: "NotificationProtocolsModule",
            dependencies: []
        ),
    ]
)
