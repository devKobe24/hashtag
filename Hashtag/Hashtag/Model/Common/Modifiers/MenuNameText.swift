//
//  MenuNameText.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/6/23.
//

import SwiftUI

struct MenuNameText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title2, design: .rounded).weight(.bold))
            .padding(.top, 50)
            .multilineTextAlignment(.center)
            .foregroundStyle(.white)
    }
}
