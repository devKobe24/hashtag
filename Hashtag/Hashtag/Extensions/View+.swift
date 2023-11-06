//
//  View+.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/6/23.
//

import SwiftUI

extension View {
    func profileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
    
    func defaultAvatarImageViewStyle(avatarViewSize: CGFloat) -> some View {
        self.modifier(AvatarImageView(avatarViewSize: avatarViewSize))
    }
}
