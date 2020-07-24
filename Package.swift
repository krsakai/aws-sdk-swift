// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "AWSSDKSwift",
    platforms: [.iOS(.v12), .tvOS(.v12), .watchOS(.v5)],
    products: [
        .library(name: "AWSSDKSwift", targets: ["CognitoIdentity","CognitoIdentityProvider","CognitoSync","IAM","S3","S3Control","S3ControlMiddleware","S3Middleware","SMS","SNS"]),

        .library(name: "CognitoIdentity", targets: ["CognitoIdentity"]),
        .library(name: "CognitoIdentityProvider", targets: ["CognitoIdentityProvider"]),
        .library(name: "CognitoSync", targets: ["CognitoSync"]),
        .library(name: "IAM", targets: ["IAM"]),
        .library(name: "S3", targets: ["S3"]),
        .library(name: "S3Control", targets: ["S3Control"]),
        .library(name: "SMS", targets: ["SMS"]),
        .library(name: "SNS", targets: ["SNS"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-aws/aws-sdk-swift-core.git", .upToNextMinor(from: "4.6.0"))
    ],
    targets: [
        .target(name: "CognitoIdentity", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Services/CognitoIdentity"),
        .target(name: "CognitoIdentityProvider", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Services/CognitoIdentityProvider"),
        .target(name: "CognitoSync", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Services/CognitoSync"),
        .target(name: "IAM", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Services/IAM"),
        .target(name: "S3", dependencies: ["AWSSDKSwiftCore", "S3Middleware"], path: "./Sources/AWSSDKSwift/Services/S3"),
        .target(name: "S3Control", dependencies: ["AWSSDKSwiftCore", "S3ControlMiddleware"], path: "./Sources/AWSSDKSwift/Services/S3Control"),
        .target(name: "SMS", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Services/SMS"),
        .target(name: "SNS", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Services/SNS"),
        .target(name: "S3ControlMiddleware", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Middlewares/S3Control"),
        .target(name: "S3Middleware", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Middlewares/S3")
    ]
)
