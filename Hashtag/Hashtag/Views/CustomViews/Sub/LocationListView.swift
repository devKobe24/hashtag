//
//  LocationListView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/4/23.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10) { item in
                    HStack(content: {
                        Image(ImageAssets.hashTagSquareAsset.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .padding(.vertical, 8)
                        
                        VStack(alignment: .leading, content: {
                            Text("Test Location Name")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
                            
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
            .navigationTitle("Hashtag Spots")
        }
    }
}

#Preview {
    LocationListView()
}
