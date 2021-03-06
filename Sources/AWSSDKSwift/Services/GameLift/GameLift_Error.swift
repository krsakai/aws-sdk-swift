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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for GameLift
public enum GameLiftErrorType: AWSErrorType {
    case conflictException(message: String?)
    case fleetCapacityExceededException(message: String?)
    case gameSessionFullException(message: String?)
    case idempotentParameterMismatchException(message: String?)
    case internalServiceException(message: String?)
    case invalidFleetStatusException(message: String?)
    case invalidGameSessionStatusException(message: String?)
    case invalidRequestException(message: String?)
    case limitExceededException(message: String?)
    case notFoundException(message: String?)
    case outOfCapacityException(message: String?)
    case taggingFailedException(message: String?)
    case terminalRoutingStrategyException(message: String?)
    case unauthorizedException(message: String?)
    case unsupportedRegionException(message: String?)
}

extension GameLiftErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConflictException":
            self = .conflictException(message: message)
        case "FleetCapacityExceededException":
            self = .fleetCapacityExceededException(message: message)
        case "GameSessionFullException":
            self = .gameSessionFullException(message: message)
        case "IdempotentParameterMismatchException":
            self = .idempotentParameterMismatchException(message: message)
        case "InternalServiceException":
            self = .internalServiceException(message: message)
        case "InvalidFleetStatusException":
            self = .invalidFleetStatusException(message: message)
        case "InvalidGameSessionStatusException":
            self = .invalidGameSessionStatusException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "OutOfCapacityException":
            self = .outOfCapacityException(message: message)
        case "TaggingFailedException":
            self = .taggingFailedException(message: message)
        case "TerminalRoutingStrategyException":
            self = .terminalRoutingStrategyException(message: message)
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        case "UnsupportedRegionException":
            self = .unsupportedRegionException(message: message)
        default:
            return nil
        }
    }
}

extension GameLiftErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .conflictException(let message):
            return "ConflictException: \(message ?? "")"
        case .fleetCapacityExceededException(let message):
            return "FleetCapacityExceededException: \(message ?? "")"
        case .gameSessionFullException(let message):
            return "GameSessionFullException: \(message ?? "")"
        case .idempotentParameterMismatchException(let message):
            return "IdempotentParameterMismatchException: \(message ?? "")"
        case .internalServiceException(let message):
            return "InternalServiceException: \(message ?? "")"
        case .invalidFleetStatusException(let message):
            return "InvalidFleetStatusException: \(message ?? "")"
        case .invalidGameSessionStatusException(let message):
            return "InvalidGameSessionStatusException: \(message ?? "")"
        case .invalidRequestException(let message):
            return "InvalidRequestException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .notFoundException(let message):
            return "NotFoundException: \(message ?? "")"
        case .outOfCapacityException(let message):
            return "OutOfCapacityException: \(message ?? "")"
        case .taggingFailedException(let message):
            return "TaggingFailedException: \(message ?? "")"
        case .terminalRoutingStrategyException(let message):
            return "TerminalRoutingStrategyException: \(message ?? "")"
        case .unauthorizedException(let message):
            return "UnauthorizedException: \(message ?? "")"
        case .unsupportedRegionException(let message):
            return "UnsupportedRegionException: \(message ?? "")"
        }
    }
}
