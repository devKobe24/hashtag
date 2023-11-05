//
//  AvatarView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/5/23.
//

import SwiftUI

struct AvatarView: View {
    
    var avatarViewSize: CGFloat
    var firstName: String?
    
    var body: some View {
        
        VStack {
            Image(ImageAssets.defaultAvatar.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: avatarViewSize, height: avatarViewSize)
                .clipShape(Circle())
            
            
            let firstName = generateFirstName(firstName: firstName)
            Text(firstName)
                .fontWeight(.bold)
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
    
    func generateFirstName(firstName: String?) -> String {
        guard let firstName = firstName else {
            return ""
        }
        return firstName
    }
}

#Preview {
    AvatarView(avatarViewSize: 35)
}
