//
//  MenuNameBackgroundView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/6/23.
//

import SwiftUI

struct MenuNameBackgroundView: View {
    var width: CGFloat
    
    var body: some View {
        Color(.secondarySystemBackground)
            .frame(width: width ,height: 50)
            .cornerRadius(12)
            .padding(.horizontal, -20)
    }
}

#Preview {
    MenuNameBackgroundView(width: 100)
}
