//
//  StoreDescriptionView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/6/23.
//

import SwiftUI

struct StoreDescriptionView: View {
    var storeDescription: String
    
    var body: some View {
        Text(storeDescription)
            .lineLimit(3)
            .minimumScaleFactor(0.75)
            .frame(height: 70)
            .padding(.horizontal)
    }
}

#Preview {
    StoreDescriptionView(storeDescription: "This is the store description for testing purposes. Hello, our store sells very delicious food. The main menu is Korean food. welcome")
}
