//
//  SFSymbols.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/4/23.
//

enum SFSymbols {
    case map
    case building
    case person
    
    var imageName: String {
        switch self {
        case .map:
            return "map"
        case .building:
            return "building"
        case .person:
            return "person"
        }
    }
}
