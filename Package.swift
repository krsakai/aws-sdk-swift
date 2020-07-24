// swift-tools-version:5.1
//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import PackageDescription

let package = Package(
    name: "aws-sdk-swift",
    platforms: [.iOS(.v12), .tvOS(.v12), .watchOS(.v5)],
    products: [
        .library(name: "AWSCognitoIdentity", targets: ["AWSCognitoIdentity"]),
        .library(name: "AWSCognitoIdentityProvider", targets: ["AWSCognitoIdentityProvider"]),
        .library(name: "AWSCognitoSync", targets: ["AWSCognitoSync"]),
        .library(name: "AWSIAM", targets: ["AWSIAM"]),
        .library(name: "AWSS3", targets: ["AWSS3"]),
        .library(name: "AWSS3Control", targets: ["AWSS3Control"]),
        .library(name: "AWSSMS", targets: ["AWSSMS"]),
        .library(name: "AWSSNS", targets: ["AWSSNS"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-aws/aws-sdk-swift-core.git", .branch("master"))
    ],
    targets: [
        .target(name: "AWSCognitoIdentity", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Services/CognitoIdentity"),
        .target(name: "AWSCognitoIdentityProvider", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Services/CognitoIdentityProvider"),
        .target(name: "AWSCognitoSync", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Services/CognitoSync"),
        .target(name: "AWSIAM", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Services/IAM"),
        .target(name: "AWSS3", dependencies: ["AWSSDKSwiftCore", "CAWSZlib"], path: "./Sources/AWSSDKSwift/", sources: ["Services/S3", "Extensions/S3"]),
        .target(name: "AWSS3Control", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/", sources: ["Services/S3Control", "Extensions/S3Control"]),
        .target(name: "AWSSMS", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Services/SMS"),
        .target(name: "AWSSNS", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Services/SNS"),
        .target(name: "CAWSZlib", linkerSettings: [.linkedLibrary("z")])
    ]
)
