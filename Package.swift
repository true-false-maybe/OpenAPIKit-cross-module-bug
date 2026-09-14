// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenAPIKit-cross-module-bug",
    platforms: [
        .macOS("26.4"),
    ],
    products: [
        .executable(name: "OpenAPIKit-cross-module-bug", targets: ["OpenAPIKit-cross-module-bug"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mattpolzin/OpenAPIKit.git", .upToNextMajor(from: "6.3.0"), traits: []),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "OpenAPIKit-cross-module-bug",
            dependencies: [
                .product(name: "OpenAPIKit", package: "OpenAPIKit")
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)
