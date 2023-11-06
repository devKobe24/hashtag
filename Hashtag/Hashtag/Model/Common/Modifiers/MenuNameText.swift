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
            .padding(.top, 50)
            .multilineTextAlignment(.center)
            .foregroundStyle(.brandPrimary)
    }
}
