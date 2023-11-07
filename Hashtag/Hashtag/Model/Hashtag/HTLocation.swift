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
        address = record[HTLocationSupport.kAddress.propertyName] as? String
        bannerAsset = record[HTLocationSupport.kBannerAsset.propertyName] as? CKAsset
        location = record[HTLocationSupport.kLocation.propertyName] as? CLLocation
        menuImages = record[HTLocationSupport.kMenuImages.propertyName] as? [CKAsset]
        name = record[HTLocationSupport.kName.propertyName] as? String
        squareAsset = record[HTLocationSupport.kSquareAsset.propertyName] as? CKAsset
        storeDescription = record[HTLocationSupport.kStoreDescription.propertyName] as? String
        webSiteURL = record[HTLocationSupport.kWebsiteURL.propertyName] as? String
    }
}
