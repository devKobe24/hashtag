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
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text("Bio: ")
                    .font(.callout)
                    .foregroundColor(.secondary)
                +
                Text("\(100 - bio.count)")
                    .fontWeight(.bold)
                    .font(.callout)
                    .foregroundColor(bio.count <= 100 ? .brandPrimaryColor : Color.red)
                +
                Text(" Characters Remain")
                    .font(.callout)
                    .foregroundColor(.secondary)
                
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
                Text("Create Profile")
                    .fontWeight(.bold)
                    .frame(width: 280, height: 44)
                    .background {
                        Color.brandPrimaryColor
                    }
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

        })
        .navigationTitle("Profile")
    }
}

#Preview {
    ProfileView()
}
