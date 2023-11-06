//
//  Text+.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/6/23.
//

import SwiftUI

extension Text {
    func menuNameStyle() -> some View {
        self.modifier(MenuNameText())
    }
}
