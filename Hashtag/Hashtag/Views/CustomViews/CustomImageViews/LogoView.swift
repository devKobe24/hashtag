//
//  LogoView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/6/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image(ImageAssets.hashtagMapLogo.imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 70)
    }
}

#Preview {
    LogoView()
}
