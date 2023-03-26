// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExtensionHelperr",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ExtensionHelperr",
            targets: ["ExtensionHelperr"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
            url: "https://github.com/firebase/firebase-ios-sdk.git",
            .upToNextMajor(from: "10.4.0")
          ),
         .package(url: "https://github.com/danha1998/ExtensionHelperr", from: "1.1.2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ExtensionHelperr",
            dependencies: [.product(name: "FirebaseRemoteConfig", package: "firebase-ios-sdk")],
            resources: [.process("Resources")]),
        .testTarget(
            name: "ExtensionHelperrTests",
            dependencies: ["ExtensionHelperr"]),
    ]
)

//.product(name: "FirebaseRemoteConfig", package: "Firebase")
