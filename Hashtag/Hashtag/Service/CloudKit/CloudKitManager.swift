//
//  CloudKitManager.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/8/23.
//

import CloudKit

struct CloudKitManager {
    
    static func getLocations(completion: @escaping (Result<[HTLocation], Error>) -> Void) {
        let sortDescriptor = NSSortDescriptor(key: HTLocationSupport.kName.key, ascending: true)
        let query = CKQuery(recordType: RecordType.location.key, predicate: NSPredicate(value: true))
        query.sortDescriptors = [sortDescriptor]
        
        CKContainer.default().publicCloudDatabase.perform(query, inZoneWith: nil) { records, error in
            if let error = error {
                completion(.failure(error))
            }
            
            guard let records = records else {
                return
            }
            
            let locations = records.map { $0.convertToHTLocation() }
            completion(.success(locations))
        }
    }
}

