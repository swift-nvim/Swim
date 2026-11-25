// swift-tools-version: 6.3

import PackageDescription

let package = Package(
    name: "SwimTests",
    platforms: [
        .macOS(.v13)
    ],
    products: [

        .executable(
            name: "swimtest",
            targets: ["SwimTestFlows"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leviouwendijk/Position.git",
            branch: "master"
        ),
        .package(
            url: "https://github.com/swift-nvim/SwimInterpreter.git",
            branch: "master"
        ),
        .package(
            url: "https://github.com/swift-nvim/SwimIO.git",
            branch: "master"
        ),
        .package(path: ".."),
    ],
    targets: [
        .executableTarget(
            name: "SwimTestFlows",
            dependencies: [
                .product(name: "Swim", package: "Swim"),
                .product(
                    name: "Position",
                    package: "Position"
                ),
                .product(
                    name: "SwimInterpreter",
                    package: "SwimInterpreter"
                ),
                .product(
                    name: "SwimIO",
                    package: "SwimIO"
                ),
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)
