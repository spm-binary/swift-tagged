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
      checksum: "9ed91471b0954c4818548d16ff8ee36940c440de617540450319f683943dbbc5"
    ),
    .binaryTarget(
      name: "TaggedMoney",
      url: "\(artifactBaseURL)/TaggedMoney.xcframework.zip",
      checksum: "011bb0bb50ad752315af45273ed7f95be927c8d012382da4a519fc3fe72834dc"
    ),
    .binaryTarget(
      name: "TaggedTime",
      url: "\(artifactBaseURL)/TaggedTime.xcframework.zip",
      checksum: "a2e84e4d0227469e282924e2125092f537c7974ee494bd2f87b3bf95cbf075a3"
    ),
  ]
)
