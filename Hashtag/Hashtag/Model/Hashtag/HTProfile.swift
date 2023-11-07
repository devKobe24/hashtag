//
//  HTProfile.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/7/23.
//

import CloudKit

struct HTProfile {
    let ckRecordID: CKRecord.ID
    let avatar: CKAsset?
    let bio: String?
    let companyName: String?
    let firstName: String?
    let lastName: String?
    let isCheckedIn: CKRecord.Reference?
    
    init(record: CKRecord) {
        ckRecordID = record.recordID
        avatar = record[HTProfileSupport.kAvatart.propertyName] as? CKAsset
        bio = record[HTProfileSupport.kBio.propertyName] as? String
        companyName = record[HTProfileSupport.kCompanayName.propertyName] as? String
        firstName = record[HTProfileSupport.kFirstName.propertyName] as? String
        lastName = record[HTProfileSupport.kLastName.propertyName] as? String
        isCheckedIn = record[HTProfileSupport.kIsCheckedIn.propertyName] as? CKRecord.Reference
    }
}
