//
//  CharactersRemainView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/6/23.
//

import SwiftUI

struct CharactersRemainView: View {
    var currentCount: Int
    
    var body: some View {
        Text("Bio: ")
            .font(.callout)
            .foregroundColor(.secondary)
        +
        Text("\(100 - currentCount)")
            .fontWeight(.bold)
            .font(.callout)
            .foregroundColor(currentCount <= 100 ? .brandPrimaryColor : Color.red)
        +
        Text(" Characters Remain")
            .font(.callout)
            .foregroundColor(.secondary)
    }
}

#Preview {
    CharactersRemainView(currentCount: 0)
}
