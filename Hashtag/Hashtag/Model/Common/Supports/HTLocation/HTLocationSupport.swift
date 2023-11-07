//  HTLocationSupport.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/7/23.
//

import Foundation

enum HTLocationSupport {
    case kAddress
    case kBannerAsset
    case kLocation
    case kMenuImages
    case kName
    case kSquareAsset
    case kStoreDescription
    case kWebsiteURL
    
    var propertyName: String {
        switch self {
        case .kAddress:
            return "address"
        case .kBannerAsset:
            return "bannerAsset"
        case .kLocation:
            return "location"
        case .kMenuImages:
            return "menuImages"
        case .kName:
            return "name"
        case .kSquareAsset:
            return "squareAsset"
        case .kStoreDescription:
            return "storeDescription"
        case .kWebsiteURL:
            return "websiteURL"
        }
    }
}
