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
        avatar = record[HTProfileSupport.kAvatart.key] as? CKAsset
        bio = record[HTProfileSupport.kBio.key] as? String
        companyName = record[HTProfileSupport.kCompanayName.key] as? String
        firstName = record[HTProfileSupport.kFirstName.key] as? String
        lastName = record[HTProfileSupport.kLastName.key] as? String
        isCheckedIn = record[HTProfileSupport.kIsCheckedIn.key] as? CKRecord.Reference
    }
}
