// swift-tools-version:6.2
import PackageDescription

let package = Package(
    name: "TrendPulse",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "AppUI", type: .dynamic, targets: ["AppUI"]),
        .executable(name: "AppManifest", targets: ["AppManifest"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swifdroid/droid.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "AppUI",
            dependencies: [
                .target(name: "App"),
            ]
        ),
        .executableTarget(
            name: "AppManifest",
            dependencies: [
                .target(name: "App"),
            ]
        ),
        .target(
            name: "App",
            dependencies: [
                .product(name: "Droid", package: "droid"),
                .target(name: "Domain"),
            ]
        ),
        .target(
            name: "Domain",
            dependencies: [],
            path: "Sources/Domain"
        ),
    ])
