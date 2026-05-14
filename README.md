# swift-tagged

SwiftPM binary mirror for `pointfreeco/swift-tagged`.

Upstream package:
`https://github.com/pointfreeco/swift-tagged`

This package preserves the upstream package identity and public product names,
while serving release-hosted XCFramework artifacts built by:
`https://github.com/spm-binary/swift-tagged-artifacts`

## SwiftPM Mirror

Configure SwiftPM to redirect the upstream URL to this binary mirror:

```sh
swift package config set-mirror \
  --original https://github.com/pointfreeco/swift-tagged \
  --mirror https://github.com/spm-binary/swift-tagged.git
```

Available products:

- `Tagged`
- `TaggedMoney`
- `TaggedTime`
