//
//  HTProfileSupport.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/7/23.
//

import Foundation

enum HTProfileSupport {
    case kAvatart
    case kBio
    case kCompanayName
    case kFirstName
    case kIsCheckedIn
    case kLastName
    
    var propertyName: String {
        switch self {
        case .kAvatart:
            return "avatar"
        case .kBio:
            return "bio"
        case .kCompanayName:
            return "companyName"
        case .kFirstName:
            return "firstName"
        case .kIsCheckedIn:
            return "isCheckedIn"
        case .kLastName:
            return "lastName"
        }
    }
}
