// swift-tools-version:5.6
import PackageDescription

let version = "0.10.0"
let artifactBaseURL = "https://github.com/spm-binary/swift-tagged-artifacts/releases/download/\(version)"

let package = Package(
  name: "swift-tagged",
  products: [
    .library(name: "Tagged", targets: ["Tagged"]),
    .library(name: "TaggedMoney", targets: ["Tagged", "TaggedMoney"]),
    .library(name: "TaggedTime", targets: ["Tagged", "TaggedTime"]),
  ],
  targets: [
    .binaryTarget(
      name: "Tagged",
      url: "\(artifactBaseURL)/Tagged.xcframework.zip",
      checksum: "db28147dcc916d3cecb67d36a6477e314c2f3f3b8055f3572df2935dde235069"
    ),
    .binaryTarget(
      name: "TaggedMoney",
      url: "\(artifactBaseURL)/TaggedMoney.xcframework.zip",
      checksum: "cfc2325dcc027d8306f16e1df64037197cde34b43299295e4b1896e5a315fe6d"
    ),
    .binaryTarget(
      name: "TaggedTime",
      url: "\(artifactBaseURL)/TaggedTime.xcframework.zip",
      checksum: "f2161fe2c07036e09b4f5f48ecbc4441d34ac4bb862f555f9e1b7d217277a9ac"
    ),
  ]
)
