// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.8.0"

let package = Package(
    name: "UIKitHelperPackage",
    platforms: [
        .iOS(.v16),
        .macOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "UIKitHelperPackage",
            targets: ["SamplePackage","UIKitHelper"]),
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
        */
        
        /*
            .binaryTarget(name: "CrashReporter", url: "https://eidinger.info/PLCrashReporterXCFrameworks/\(version)/CrashReporter.xcframework.zip",
                                 checksum: "4aa868a8d68dc28c72f564c7a2123654c91da5ff1b6483fb773b97f069e831d4"),
        
            .binaryTarget(name: "UIKitHelper",
                          url: "https://github.com/mansoor92/UIKitHelper/blob/master/releases/1.0.0/UIKitHelper.xcframework.zip",
                          checksum: "403412780924a2ca357cfa03f6cb21048488a454d158d630dde7679c81d84048"),*/
        .binaryTarget(name: "UIKitHelper",
                      url: "https://github.com/mansoor92/UIKitHelper/blob/master/releases/1.0.0/UIKitHelper.zip",
                      checksum: "f42b716ff3a983664b22082403a4ff36b413cb7b0ad16bf18a000edad6cbe614")
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
             checksum: "checksum"),
         .target(
             name: "PackageB",
             dependencies: [
                 "LibraryA"
             ])
     ])
 */
