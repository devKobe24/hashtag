//
//  LocationDetailView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/5/23.
//

import SwiftUI

struct LocationDetailView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        NavigationView(content: {
            VStack(spacing: 16) {
                Image(ImageAssets.hashtagBannerAsset.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 120)
                
                HStack(content: {
                    Label("123 Main Street", systemImage: SFSymbols.mappinAndEllipse.imageName)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    
                    Spacer()
                })
                .padding(.horizontal)
                
                Text("This is a test description. This is a test description. This is a test description. This is a test description. This is a test description.")
                    .lineLimit(3)
                    .minimumScaleFactor(0.75)
                    .padding(.horizontal)
                
                ZStack(content: {
                    Capsule()
                        .frame(height: 80)
                        .foregroundStyle(Color.brandPrimaryColor)
                    
                    HStack(spacing: 20, content: {
                        
                        Button(action: {
                            
                        }, label: {
                            CommonCircleButtonView(
                                color: .secondBrandPrimaryColor,
                                imageName: SFSymbols.locationFill.imageName,
                                width: 23,
                                height: 23
                            )
                        })
                        
                        Link(destination: URL(string: "https://www.apple.com")!, 
                             label: {
                            CommonCircleButtonView(
                                color: .secondBrandPrimaryColor,
                                imageName: SFSymbols.network.imageName,
                                width: 30,
                                height: 30
                            )
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            CommonCircleButtonView(
                                color: .secondBrandPrimaryColor,
                                imageName: SFSymbols.listClipboardFill.imageName,
                                width: 23,
                                height: 33
                            )
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            CommonCircleButtonView(
                                color: .secondBrandPrimaryColor,
                                imageName: SFSymbols.personFillCheckmark.imageName,
                                width: 30,
                                height: 21
                            )
                        })
                        
                        
                    })
                })
                .padding(.horizontal)
                
                Text("Who's Here?")
                    .fontWeight(.bold)
                    .font(.title2)
                
                LazyVGrid(columns: columns,
                          content: {
                    AvatarView(avatarViewSize: 64, firstName: "Kobe")
                    AvatarView(avatarViewSize: 64, firstName: "Kobe")
                    AvatarView(avatarViewSize: 64, firstName: "Kobe")
                    AvatarView(avatarViewSize: 64, firstName: "Kobe")
                    AvatarView(avatarViewSize: 64, firstName: "Kobe")
                    AvatarView(avatarViewSize: 64, firstName: "Kobe")
                    AvatarView(avatarViewSize: 64, firstName: "Kobe")
                    
                })
                
                Spacer()
            }
            .navigationTitle("Location Name")
            .navigationBarTitleDisplayMode(.inline)
        })
    }
}

#Preview {
    LocationDetailView()
}
