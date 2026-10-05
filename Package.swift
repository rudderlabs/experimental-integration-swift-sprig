// swift-tools-version: 5.9
import PackageDescription
let package = Package(
    name: "DemoSprig",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [.library(name: "DemoSprig", targets: ["DemoSprig"])],
    dependencies: [.package(url: "https://github.com/rudderlabs/experimental-rudder-sdk-swift.git", from: "0.1.0")],
    targets: [.target(name: "DemoSprig", dependencies: [.product(name: "DemoSDK", package: "experimental-rudder-sdk-swift")])]
)
