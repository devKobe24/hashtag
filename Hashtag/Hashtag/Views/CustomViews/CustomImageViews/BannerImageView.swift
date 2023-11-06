//
//  BannerImageView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/6/23.
//

import SwiftUI

struct BannerImageView: View {
    var bannerImageName: String
    
    var body: some View {
        Image(bannerImageName)
            .resizable()
            .scaledToFill()
            .frame(height: 120)
    }
}

#Preview {
    BannerImageView(bannerImageName: ImageAssets.hashtagBannerAsset.imageName)
}
