//
//  LocationCell.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/5/23.
//

import SwiftUI

struct LocationCell: View {
    
    var location: HTLocation
    var locationName: String {
        guard let locationName = location.name else {
            return "N/A"
        }
        return locationName
    }
    
    init(location: HTLocation) {
        self.location = location
    }
    
    
    
    var body: some View {
        
        HStack(content: {
            Image(ImageAssets.hashTagSquareAsset.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            
            VStack(alignment: .leading, content: {
                
                Text(locationName)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                    .scaledToFill()
                
                HStack(content: {
                    AvatarView(avatarViewSize: 35)
                    AvatarView(avatarViewSize: 35)
                    AvatarView(avatarViewSize: 35)
                    AvatarView(avatarViewSize: 35)
                    AvatarView(avatarViewSize: 35)
                })
                
            })
            .padding(.leading)
        })
    }
}

#Preview {
    LocationCell(location: HTLocation(record: MockData.location))
}
