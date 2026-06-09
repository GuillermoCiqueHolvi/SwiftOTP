// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SwiftOTP",
    platforms: [
		.iOS(.v15), .macOS(.v11), .tvOS(.v15), .watchOS(.v9), .visionOS(.v1)
    ],
    products: [
        .library(name: "SwiftOTP", targets: ["SwiftOTP"]),
        .library(name: "SwiftOTP-Dynamic", type: .dynamic, targets: ["SwiftOTP"]),
    ],
    dependencies: [
		.package(url: "https://github.com/apple/swift-crypto.git", branch: "5.x")
    ],
    targets: [
        .target(name: "SwiftOTP", dependencies: [.product(name: "Crypto", package: "swift-crypto")], path: "SwiftOTP/"),
        .testTarget(name: "SwiftOTPTests", dependencies: ["SwiftOTP"])
    ]
)
