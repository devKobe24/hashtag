//
//  HTLocation.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/7/23.
//

import CloudKit

struct HTLocation {
    let ckRecordID: CKRecord.ID
    let address: String?
    let bannerAsset: CKAsset?
    let location: CLLocation?
    let menuImages: [CKAsset]?
    let name: String?
    let squareAsset: CKAsset?
    let storeDescription: String?
    let webSiteURL: String?
    
    init(record: CKRecord) {
        ckRecordID = record.recordID
        address = record[HTLocationSupport.kAddress.key] as? String
        bannerAsset = record[HTLocationSupport.kBannerAsset.key] as? CKAsset
        location = record[HTLocationSupport.kLocation.key] as? CLLocation
        menuImages = record[HTLocationSupport.kMenuImages.key] as? [CKAsset]
        name = record[HTLocationSupport.kName.key] as? String
        squareAsset = record[HTLocationSupport.kSquareAsset.key] as? CKAsset
        storeDescription = record[HTLocationSupport.kStoreDescription.key] as? String
        webSiteURL = record[HTLocationSupport.kWebsiteURL.key] as? String
    }
}
