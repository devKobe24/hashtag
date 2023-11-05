//
//  AvatarView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/5/23.
//

import SwiftUI

struct AvatarView: View {
    var body: some View {
        Image(ImageAssets.defaultAvatar.imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 35, height: 35)
            .clipShape(Circle())
    }
}

#Preview {
    AvatarView()
}
