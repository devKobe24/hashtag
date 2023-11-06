//
//  HTButtonView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/6/23.
//

import SwiftUI

struct HTButtonView: View {
    var buttonTitle: String
    var buttonBackgroundColor: Color
    
    var body: some View {
        Text(buttonTitle)
            .fontWeight(.bold)
            .frame(width: 280, height: 44)
            .background {
                buttonBackgroundColor
            }
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

#Preview {
    HTButtonView(buttonTitle: "Test Button", buttonBackgroundColor: .brandPrimaryColor)
}
