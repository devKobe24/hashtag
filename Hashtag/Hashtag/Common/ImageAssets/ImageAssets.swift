//
//  ImageAssets.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/4/23.
//

enum ImageAssets {
    case hashtagMapLogo
    
    var imageName: String {
        switch self {
        case .hashtagMapLogo:
            return "hashtag-map-logo"
        }
    }
}
