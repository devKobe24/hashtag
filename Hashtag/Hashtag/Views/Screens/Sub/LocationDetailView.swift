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
    
    let movieNames = [
        "어벤저스",
        "냉정과 열정 사이",
        "블루",
        "콜 바이 유 어 네임",
        "겨울 왕국",
        "조커",
        "라라랜드",
        "말레피센트",
        "기생충",
        "슈퍼 마리오",
        "부산행",
    ]
    
    @State private var showingPopover = false
    
    var body: some View {
        VStack(spacing: 16) {
            BannerImageView(
                bannerImageName: ImageAssets.hashtagBannerAsset.imageName
            )
            
            HStack(content: {
                AddressView(
                    storeAddress: "Main Street 123",
                    symbolImageName: SFSymbols.mappinAndEllipse.imageName
                )
                
                Spacer()
            })
            .padding(.horizontal)
            
            StoreDescriptionView(storeDescription: "This is the store description for testing purposes. Hello, our store sells very delicious food. The main menu is Korean food. welcome")
            
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
                            RepresentativeMenuView(menuImageNames: moviePosters, menuNames: movieNames)
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
        .navigationTitle("Location Name")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LocationDetailView()
}
