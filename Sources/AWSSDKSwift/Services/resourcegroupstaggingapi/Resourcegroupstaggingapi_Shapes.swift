// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import AWSSDKSwiftCore

extension Resourcegroupstaggingapi {

    public struct UntagResourcesInput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "TagKeys", required: true, type: .list), 
            AWSShapeMember(label: "ResourceARNList", required: true, type: .list)
        ]
        /// A list of the tag keys that you want to remove from the specified resources.
        public let tagKeys: [String]
        /// A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a resource. You can specify a minimum of 1 and a maximum of 20 ARNs (resources) to untag. An ARN can be set to a maximum of 1600 characters. For more information, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
        public let resourceARNList: [String]

        public init(tagKeys: [String], resourceARNList: [String]) {
            self.tagKeys = tagKeys
            self.resourceARNList = resourceARNList
        }

        private enum CodingKeys: String, CodingKey {
            case tagKeys = "TagKeys"
            case resourceARNList = "ResourceARNList"
        }
    }

    public struct Tag: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Value", required: true, type: .string), 
            AWSShapeMember(label: "Key", required: true, type: .string)
        ]
        /// The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
        public let value: String
        /// One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
        public let key: String

        public init(value: String, key: String) {
            self.value = value
            self.key = key
        }

        private enum CodingKeys: String, CodingKey {
            case value = "Value"
            case key = "Key"
        }
    }

    public struct TagFilter: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Key", required: false, type: .string), 
            AWSShapeMember(label: "Values", required: false, type: .list)
        ]
        /// One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
        public let key: String?
        /// The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
        public let values: [String]?

        public init(key: String? = nil, values: [String]? = nil) {
            self.key = key
            self.values = values
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case values = "Values"
        }
    }

    public struct FailureInfo: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "ErrorMessage", required: false, type: .string), 
            AWSShapeMember(label: "ErrorCode", required: false, type: .enum), 
            AWSShapeMember(label: "StatusCode", required: false, type: .integer)
        ]
        /// The message of the common error.
        public let errorMessage: String?
        /// The code of the common error. Valid values include InternalServiceException, InvalidParameterException, and any valid error code returned by the AWS service that hosts the resource that you want to tag.
        public let errorCode: ErrorCode?
        /// The HTTP status code of the common error.
        public let statusCode: Int32?

        public init(errorMessage: String? = nil, errorCode: ErrorCode? = nil, statusCode: Int32? = nil) {
            self.errorMessage = errorMessage
            self.errorCode = errorCode
            self.statusCode = statusCode
        }

        private enum CodingKeys: String, CodingKey {
            case errorMessage = "ErrorMessage"
            case errorCode = "ErrorCode"
            case statusCode = "StatusCode"
        }
    }

    public enum ErrorCode: String, CustomStringConvertible, Codable {
        case internalserviceexception = "InternalServiceException"
        case invalidparameterexception = "InvalidParameterException"
        public var description: String { return self.rawValue }
    }

    public struct ResourceTagMapping: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceARN", required: false, type: .string), 
            AWSShapeMember(label: "Tags", required: false, type: .list)
        ]
        /// An array of resource ARN(s).
        public let resourceARN: String?
        /// The tags that have been applied to one or more AWS resources.
        public let tags: [Tag]?

        public init(resourceARN: String? = nil, tags: [Tag]? = nil) {
            self.resourceARN = resourceARN
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARN = "ResourceARN"
            case tags = "Tags"
        }
    }

    public struct UntagResourcesOutput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "FailedResourcesMap", required: false, type: .map)
        ]
        /// Details of resources that could not be untagged. An error code, status code, and error message are returned for each failed item.
        public let failedResourcesMap: [String: FailureInfo]?

        public init(failedResourcesMap: [String: FailureInfo]? = nil) {
            self.failedResourcesMap = failedResourcesMap
        }

        private enum CodingKeys: String, CodingKey {
            case failedResourcesMap = "FailedResourcesMap"
        }
    }

    public struct GetTagValuesInput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "PaginationToken", required: false, type: .string), 
            AWSShapeMember(label: "Key", required: true, type: .string)
        ]
        /// A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.
        public let paginationToken: String?
        /// The key for which you want to list all existing values in the specified region for the AWS account.
        public let key: String

        public init(paginationToken: String? = nil, key: String) {
            self.paginationToken = paginationToken
            self.key = key
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case key = "Key"
        }
    }

    public struct TagResourcesInput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Tags", required: true, type: .map), 
            AWSShapeMember(label: "ResourceARNList", required: true, type: .list)
        ]
        /// The tags that you want to add to the specified resources. A tag consists of a key and a value that you define.
        public let tags: [String: String]
        /// A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a resource. You can specify a minimum of 1 and a maximum of 20 ARNs (resources) to tag. An ARN can be set to a maximum of 1600 characters. For more information, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
        public let resourceARNList: [String]

        public init(tags: [String: String], resourceARNList: [String]) {
            self.tags = tags
            self.resourceARNList = resourceARNList
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
            case resourceARNList = "ResourceARNList"
        }
    }

    public struct GetTagValuesOutput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "PaginationToken", required: false, type: .string), 
            AWSShapeMember(label: "TagValues", required: false, type: .list)
        ]
        /// A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the PaginationToken value in a subsequent request.
        public let paginationToken: String?
        /// A list of all tag values for the specified key in the AWS account.
        public let tagValues: [String]?

        public init(paginationToken: String? = nil, tagValues: [String]? = nil) {
            self.paginationToken = paginationToken
            self.tagValues = tagValues
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case tagValues = "TagValues"
        }
    }

    public struct GetResourcesOutput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "PaginationToken", required: false, type: .string), 
            AWSShapeMember(label: "ResourceTagMappingList", required: false, type: .list)
        ]
        /// A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the PaginationToken value in a subsequent request.
        public let paginationToken: String?
        /// A list of resource ARNs and the tags (keys and values) associated with each.
        public let resourceTagMappingList: [ResourceTagMapping]?

        public init(paginationToken: String? = nil, resourceTagMappingList: [ResourceTagMapping]? = nil) {
            self.paginationToken = paginationToken
            self.resourceTagMappingList = resourceTagMappingList
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case resourceTagMappingList = "ResourceTagMappingList"
        }
    }

    public struct GetTagKeysInput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "PaginationToken", required: false, type: .string)
        ]
        /// A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.
        public let paginationToken: String?

        public init(paginationToken: String? = nil) {
            self.paginationToken = paginationToken
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
        }
    }

    public struct GetResourcesInput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "PaginationToken", required: false, type: .string), 
            AWSShapeMember(label: "TagFilters", required: false, type: .list), 
            AWSShapeMember(label: "TagsPerPage", required: false, type: .integer), 
            AWSShapeMember(label: "ResourcesPerPage", required: false, type: .integer), 
            AWSShapeMember(label: "ResourceTypeFilters", required: false, type: .list)
        ]
        /// A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.
        public let paginationToken: String?
        /// A list of tags (keys and values). A request can include up to 50 keys, and each key can include up to 20 values. If you specify multiple filters connected by an AND operator in a single request, the response returns only those resources that are associated with every specified filter. If you specify multiple filters connected by an OR operator in a single request, the response returns all resources that are associated with at least one or possibly more of the specified filters.
        public let tagFilters: [TagFilter]?
        /// A limit that restricts the number of tags (key and value pairs) returned by GetResources in paginated output. A resource with no tags is counted as having one tag (one key and value pair).  GetResources does not split a resource and its associated tags across pages. If the specified TagsPerPage would cause such a break, a PaginationToken is returned in place of the affected resource and its tags. Use that token in another request to get the remaining data. For example, if you specify a TagsPerPage of 100 and the account has 22 resources with 10 tags each (meaning that each resource has 10 key and value pairs), the output will consist of 3 pages, with the first page displaying the first 10 resources, each with its 10 tags, the second page displaying the next 10 resources each with its 10 tags, and the third page displaying the remaining 2 resources, each with its 10 tags.  You can set TagsPerPage to a minimum of 100 items and the maximum of 500 items.
        public let tagsPerPage: Int32?
        /// A limit that restricts the number of resources returned by GetResources in paginated output. You can set ResourcesPerPage to a minimum of 1 item and the maximum of 50 items. 
        public let resourcesPerPage: Int32?
        /// The constraints on the resources that you want returned. The format of each resource type is service[:resourceType]. For example, specifying a resource type of ec2 returns all tagged Amazon EC2 resources (which includes tagged EC2 instances). Specifying a resource type of ec2:instance returns only EC2 instances.  The string for each service name and resource type is the same as that embedded in a resource's Amazon Resource Name (ARN). Consult the AWS General Reference for the following:   For a list of service name strings, see AWS Service Namespaces.   For resource type strings, see Example ARNs.   For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces.  
        public let resourceTypeFilters: [String]?

        public init(paginationToken: String? = nil, tagFilters: [TagFilter]? = nil, tagsPerPage: Int32? = nil, resourcesPerPage: Int32? = nil, resourceTypeFilters: [String]? = nil) {
            self.paginationToken = paginationToken
            self.tagFilters = tagFilters
            self.tagsPerPage = tagsPerPage
            self.resourcesPerPage = resourcesPerPage
            self.resourceTypeFilters = resourceTypeFilters
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case tagFilters = "TagFilters"
            case tagsPerPage = "TagsPerPage"
            case resourcesPerPage = "ResourcesPerPage"
            case resourceTypeFilters = "ResourceTypeFilters"
        }
    }

    public struct GetTagKeysOutput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "PaginationToken", required: false, type: .string), 
            AWSShapeMember(label: "TagKeys", required: false, type: .list)
        ]
        /// A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the PaginationToken value in a subsequent request.
        public let paginationToken: String?
        /// A list of all tag keys in the AWS account.
        public let tagKeys: [String]?

        public init(paginationToken: String? = nil, tagKeys: [String]? = nil) {
            self.paginationToken = paginationToken
            self.tagKeys = tagKeys
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case tagKeys = "TagKeys"
        }
    }

    public struct TagResourcesOutput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "FailedResourcesMap", required: false, type: .map)
        ]
        /// Details of resources that could not be tagged. An error code, status code, and error message are returned for each failed item.
        public let failedResourcesMap: [String: FailureInfo]?

        public init(failedResourcesMap: [String: FailureInfo]? = nil) {
            self.failedResourcesMap = failedResourcesMap
        }

        private enum CodingKeys: String, CodingKey {
            case failedResourcesMap = "FailedResourcesMap"
        }
    }

}