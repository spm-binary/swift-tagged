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
      checksum: "d72e3f9834990abf6f8af82a1d8050211d8e0b3822c89776b428de3990940222"
    ),
    .binaryTarget(
      name: "TaggedMoney",
      url: "\(artifactBaseURL)/TaggedMoney.xcframework.zip",
      checksum: "91de57d25d32acac02be382e424913660b71b17792e1572455b58a8586fbc2a1"
    ),
    .binaryTarget(
      name: "TaggedTime",
      url: "\(artifactBaseURL)/TaggedTime.xcframework.zip",
      checksum: "1d42e277581f425503fa2d4b17c0076364e713c5000535ff4cc15d6dd6ca4e37"
    ),
  ]
)
