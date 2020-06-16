// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PreviewableActivityViewController",
    platforms: [.iOS("9.0")],
    products: [.library(name: "PreviewableActivityViewController", targets: ["PreviewableActivityViewController"])],
	targets: [.target(name: "PreviewableActivityViewController", path: "Sources")],
	swiftLanguageVersions: [.v5]
)
