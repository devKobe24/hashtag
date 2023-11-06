//
//  ProfileView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/4/23.
//

import SwiftUI

struct ProfileView: View {
    
    
    
    @State private var companyName = ""
    @State private var bio = ""
    
    var body: some View {
        VStack(content: {
            ZStack(content: {
                NameBackgroundView()
                
                HStack(spacing: 16, content: {
                    ZStack(content: {
                        AvatarView(avatarViewSize: 84)
                        EditImageView(xAxis: 3, yAxis: 25.5)
                    })
                    .padding(.leading, 12)
                    
                    VStack(spacing: 1, content: {
                        CommonNameTextField(isFirsName: true)
                        CommonNameTextField(isFirsName: false)
                        TextField("Company Name", text: $companyName)
                    })
                    .padding(.trailing, 16)
                })
                .padding()
            })
            
            VStack(alignment: .leading, spacing: 8, content: {
                CharactersRemainView(currentCount: bio.count)
                TextEditor(text: $bio)
                    .frame(height: 100)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8).stroke(Color.secondary, lineWidth: 1)
                    }
            })
            .padding(.horizontal, 20)
            
            Spacer()
            
            Button {
                
            } label: {
                HTButtonView(
                    buttonTitle: "Create Profile",
                    buttonBackgroundColor: .brandPrimaryColor
                )
            }
        })
        .navigationTitle("Profile")
    }
}

#Preview {
    NavigationView(content: {
        ProfileView()
    })
}


