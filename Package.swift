// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "fluent",
    platforms: [
      .iOS(.v13),
      .macOS(.v10_15),
    ],
    products: [
        .library(name: "Fluent", targets: ["Fluent"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/fluent-kit.git", from: "1.36.0"),
        .package(url: "https://github.com/vapor/vapor.git", from: "4.50.0"),
    ],
    targets: [
        .target(name: "Fluent", dependencies: [
            .product(name: "FluentKit", package: "fluent-kit"),
            .product(name: "Vapor", package: "vapor"),
        ]),
        .testTarget(name: "FluentTests", dependencies: [
            .target(name: "Fluent"),
            .product(name: "XCTFluent", package: "fluent-kit"),
            .product(name: "XCTVapor", package: "vapor"),
        ]),
    ]
)
