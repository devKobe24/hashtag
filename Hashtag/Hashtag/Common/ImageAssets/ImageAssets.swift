//
//  ImageAssets.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/4/23.
//

enum ImageAssets {
    case hashtagMapLogo
    case hashTagSquareAsset
    case defaultAvatar
    
    var imageName: String {
        switch self {
        case .hashtagMapLogo:
            return "hashtag-map-logo"
        case .hashTagSquareAsset:
            return "hashTag-square-asset"
        case .defaultAvatar:
            return "default-avatar"
        }
    }
}
