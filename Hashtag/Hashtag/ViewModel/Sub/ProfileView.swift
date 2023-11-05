//
//  ProfileView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/4/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var companyName = ""
    @State private var bio = ""
    
    var body: some View {
        VStack(content: {
            ZStack(content: {
                Color(.secondarySystemBackground)
                    .frame(height: 130)
                    .cornerRadius(12)
                    .padding(.horizontal)
                
                HStack(spacing: 16, content: {
                    ZStack(content: {
                        AvatarView(avatarViewSize: 84)
                        
                        Image(systemName: SFSymbols.squareAndPencil.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                            .foregroundStyle(.white)
                            .offset(x: 3 ,y: 26)
                    })
                    .padding(.leading, 12)
                    
                    VStack(spacing: 1, content: {
                        TextField("First Name", text: $firstName)
                            .font(.system(size: 32, weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                        TextField("Last Name", text: $lastName)
                            .font(.system(size: 32, weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                        TextField("Company Name", text: $companyName)
                    })
                    .padding(.trailing, 16)
                    
                })
                .padding()
            })
            
            Spacer()
        })
        .navigationTitle("Profile")
    }
}

#Preview {
    ProfileView()
}
