//
//  RepresentativeMenuImageView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/6/23.
//

import SwiftUI

struct RepresentativeMenuImageView: ViewModifier {
    var imageWidth: CGFloat
    var scaleWidthAndHeight: CGFloat
    
    func body(content: Content) -> some View {
        content
            .scaledToFill()
            .frame(width: imageWidth)
            .clipped()
            .cornerRadius(5)
            .shadow(radius: 5)
            .scaleEffect(CGSize(width: scaleWidthAndHeight, height: scaleWidthAndHeight))
            .animation(.easeOut, value: 0.5)
    }
}
