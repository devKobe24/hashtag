//
//  RecordType.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/8/23.
//

enum RecordType {
    case location
    case profile
    
    var key: String {
        switch self {
        case .location:
            return "HTLocation"
        case .profile:
            return "HTProfile"
        }
    }
}
