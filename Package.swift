// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "Sparse",
  products: [
    .library(name: "Sparse", targets: ["Sparse"]),
  ],
  dependencies: [
    // Test dependencies
    .package(url: "https://github.com/Quick/Quick.git", from: "2.2.0"),
    .package(url: "https://github.com/Quick/Nimble.git", from: "8.0.4")
  ],
  targets: [
    .target(
        name: "Sparse",
        dependencies: []),
    .testTarget(
        name: "SparseTests",
        dependencies: ["Sparse", "Quick", "Nimble"]),
  ]
)
