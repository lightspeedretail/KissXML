// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KissXML",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v8),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "KissXML",
            targets: ["KissXML"]),
    ],
    targets: [
        .target(
            name: "KissXML",
            dependencies: [],
            path: "KissXML",
            publicHeadersPath: "include"),
        .testTarget(name: "KissXMLObjCTests",
                    dependencies: ["KissXML"],
                    path: "Tests/Shared",
                    exclude: ["KissXMLSwiftTests.swift"],
                    sources: nil),
        .testTarget(name: "KissXMLSwiftTests",
                    dependencies: ["KissXML"],
                    path: "Tests/Shared",
                    exclude: ["KissXMLAssertionTests.m",
                              "KissXMLTests.m"],
                    sources: nil)
    ]
)
