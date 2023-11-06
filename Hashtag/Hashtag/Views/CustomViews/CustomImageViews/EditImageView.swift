//
//  EditImageView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/6/23.
//

import SwiftUI

struct EditImageView: View {
    var xAxis: CGFloat
    var yAxis: CGFloat
    
    var body: some View {
        Image(systemName: SFSymbols.squareAndPencil.imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 14, height: 14)
            .foregroundStyle(.white)
            .offset(x: xAxis ,y: yAxis)
    }
}

#Preview {
    EditImageView(xAxis: 3, yAxis: 24)
}
