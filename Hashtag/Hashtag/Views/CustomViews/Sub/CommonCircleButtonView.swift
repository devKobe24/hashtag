//
//  LocationActionButton.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/5/23.
//

import SwiftUI

struct CommonCircleButtonView: View {
    var color: Color
    var imageName: String
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        ZStack(content: {
            Circle()
                .foregroundStyle(color)
                .frame(width: 60, height: 60)
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.white)
                .frame(width: width, height: height)
        })
    }
}

#Preview {
    CommonCircleButtonView(
        color: Color.secondBrandPrimaryColor,
        imageName: SFSymbols.locationFill.imageName,
        width: 25,
        height: 25
    )
}
