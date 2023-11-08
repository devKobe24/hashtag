//
//  CKRecord+.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/8/23.
//

import CloudKit

extension CKRecord {
    
    func convertToHTLocation() -> HTLocation {
        return HTLocation(record: self)
    }
    
    func convertToHTProfile() -> HTProfile {
        return HTProfile(record: self)
    }
}
