// swift-tools-version: 5.9
import PackageDescription
let package = Package(
    name: "RudderIntegrationSprig",
    platforms: [.iOS(.v15)],
    products: [.library(name: "RudderIntegrationSprig", targets: ["RudderIntegrationSprig"])],
    dependencies: [.package(url: "https://github.com/rudderlabs/experimental-rudder-sdk-swift.git", from: "1.2.1"), .package(url: "https://github.com/UserLeap/userleap-ios-sdk-releases", .upToNextMajor(from: "4.29.0"))],
    targets: [.target(name: "RudderIntegrationSprig", dependencies: [.product(name: "RudderStackAnalytics", package: "experimental-rudder-sdk-swift"), .product(name: "UserLeapKit", package: "userleap-ios-sdk-releases")])]
)
