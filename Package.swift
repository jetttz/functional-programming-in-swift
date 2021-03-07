// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "swift",
  dependencies: [],
  targets: [
    .target(
      name: "main",
      dependencies: ["sample"]),
	  .target(
	    name: "sample",
	    dependencies: []),
    .testTarget(
      name: "SampleTests",
      dependencies: ["sample"]),
  ]
)