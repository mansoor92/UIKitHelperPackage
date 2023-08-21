// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.0"

let package = Package(
    name: "UIKitHelperPackage", // this name is displayed when package is added to xcode project in Project Navigator under Package Dependencies
    platforms: [
        .iOS(.v16),
        .macOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "UIKitHelper",
            targets: ["UIKitHelper"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        
        .target(
            name: "SamplePackage",
            dependencies: []),
        /*
            .testTarget(
                name: "SamplePackageTests",
                dependencies: ["SamplePackage"]),
        
        .binaryTarget(name: "UIKitHelper",
                      url: "https://techtix.co/UIKitHelper.xcframework.zip",
                      checksum: "af3b522b38479fc35bbc5bc76205d841ef70fb2390d4fdffcfd853ff2bc18746")
         */

        .binaryTarget(name: "UIKitHelper", path: "frameworks/UIKitHelper.xcframework")
    ]
)


/*
 let package = Package(
     name: "PackageB",
     products: [
         .library(
             name: "PackageB",
             targets: ["PackageB"]),
         .library(
             name: "LibraryA",
             targets: ["LibraryA"])
     ],
     targets: [
         .binaryTarget(
             name: "LibraryA",
             url: "https://url.to/LibraryA.xcframework.zip",
             checksum: "af3b522b38479fc35bbc5bc76205d841ef70fb2390d4fdffcfd853ff2bc18746"),
         .target(
             name: "PackageB",
             dependencies: [
                 "LibraryA"
             ])
     ])
 */
