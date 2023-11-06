//
//  AvatarImageView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/6/23.
//

import SwiftUI

struct AvatarImageView: ViewModifier {
    var avatarViewSize: CGFloat
    
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: avatarViewSize, height: avatarViewSize)
            .clipShape(Circle())
    }
}
