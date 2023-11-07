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
        address = record[Support.kAddress.propertyName] as? String
        bannerAsset = record[Support.kBannerAsset.propertyName] as? CKAsset
        location = record[Support.kLocation.propertyName] as? CLLocation
        menuImages = record[Support.kMenuImages.propertyName] as? [CKAsset]
        name = record[Support.kName.propertyName] as? String
        squareAsset = record[Support.kSquareAsset.propertyName] as? CKAsset
        storeDescription = record[Support.kStoreDescription.propertyName] as? String
        webSiteURL = record[Support.kWebSiteURL.propertyName] as? String
    }
}
