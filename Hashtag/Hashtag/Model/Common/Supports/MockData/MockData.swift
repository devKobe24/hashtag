//
//  MockData.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/7/23.
//

import CloudKit

struct MockData {
    
    static var location: CKRecord {
        let record = CKRecord(recordType: RecordType.location.key)
        
        record[HTLocationSupport.kName.key] = "민성이네 코딩샵."
        record[HTLocationSupport.kAddress.key] = "대전 중구 평촌로 111"
        record[HTLocationSupport.kStoreDescription.key] = "이것은 테스트용 가게 설명입니다. 이것이 세 줄이 넘었을 때 혹은 세 줄이 되었을 때 어떤 UI를 보여줄지 그 것을 테스트 하기 위해서 지금 굉장히 긴 글을 적고 있습니다. 이정도면 세 줄이 되었을 것 같습니다."
        record[HTLocationSupport.kWebsiteURL.key] = "https://github.com/devKobe24/hashtag/blob/main/README.md"
        record[HTLocationSupport.kLocation.key] = CLLocation(
            latitude: 36.323572,
            longitude: 127.400699
        )
        record[HTLocationSupport.kMenuImages.key] = [
            "hashTag-square-asset",
            "hashTag-square-asset",
            "hashTag-square-asset",
            "hashTag-square-asset",
            "hashTag-square-asset",
            "hashTag-square-asset",
            "hashTag-square-asset"
        ]
        
        return record
    }
}
