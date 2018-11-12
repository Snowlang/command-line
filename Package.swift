// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "CommandLineHop",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/OMTS/Hop.git", .branch("develop")),
        .package(url: "https://github.com/kylef/Commander.git", from: "0.8.0")
    ],
    targets: [
    .target(name: "CommandLineHop", dependencies: ["Hop", "Commander"], path: "CommandLineHop")
    ]
)
