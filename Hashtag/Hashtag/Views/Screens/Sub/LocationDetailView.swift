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
    
    let moviePosters = [
        "kimbab-square-asset",
        "avengers",
        "besideColdAndPassion",
        "blue",
        "callByYourName",
        "frozen",
        "joker",
        "lalaland",
        "maleficent",
        "parasite",
        "superMario",
        "toBusan"
    ]
    
    var location: HTLocation
    
    var address: String {
        guard let address = location.address else { 
            return "N/A"
        }
        
        return address
    }
    
    var storeDescription: String {
        guard let storeDescription = location.storeDescription else {
            return "N/A"
        }
        
        return storeDescription
    }
    
    var websiteURL: String {
        guard let webSiteURL = location.webSiteURL else {
            return "N/A"
        }
        
        return webSiteURL
    }
    
    var locationName: String {
        guard let locationName = location.name else {
            return "N/A"
        }
        
        return locationName
    }
    
    init(location: HTLocation) {
        self.location = location
    }
    
    @State private var showingPopover = false
    
    var body: some View {
        VStack(spacing: 16) {
            BannerImageView(
                bannerImageName: ImageAssets.hashtagBannerAsset.imageName
            )
            
            HStack(content: {
                AddressView(
                    storeAddress: address,
                    symbolImageName: SFSymbols.mappinAndEllipse.imageName
                )
                
                Spacer()
            })
            .padding(.horizontal)
            
            StoreDescriptionView(storeDescription: storeDescription)
            
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
                    
                    Link(destination: URL(string: websiteURL)!,
                         label: {
                        CommonCircleButtonView(
                            color: .secondBrandPrimaryColor,
                            imageName: SFSymbols.network.imageName,
                            width: 30,
                            height: 30
                        )
                    })
                    
  
                    Button(action: {
                        showingPopover = true
                    }, label: {
                        CommonCircleButtonView(
                            color: .secondBrandPrimaryColor,
                            imageName: SFSymbols.listClipboardFill.imageName,
                            width: 23,
                            height: 33
                        )
                    }).popover(
                        isPresented: $showingPopover,
                        content: {
                            RepresentativeMenuView(menuImageNames: moviePosters, imageWidth: 300)
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
            
            ScrollView {
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
            }
            
            Spacer()
        }
        .navigationTitle(locationName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LocationDetailView(location: HTLocation(record: MockData.location))
}
