//
//  RepresentativeMenuView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/6/23.
//

import SwiftUI

struct RepresentativeMenuView: View {
    
    private func getScale(geometry: GeometryProxy) -> CGFloat {
        var scale: CGFloat = 1.0
        
        let x = geometry.frame(in: .global).minX
        
        let diff = abs(x)
        if diff < 100 {
            scale = 1 + (100 - diff) / 500
        }
        return scale
    }
    
    var menuImageNames: [String]
    var imageWidth: CGFloat
    
    var body: some View {
        let count: Int = menuImageNames.count
        
        NavigationView(content: {
            ScrollView(.horizontal) {
                HStack(content: {
                    ForEach(0..<count) { index in
                        GeometryReader(content: { geometry in
                            VStack(content: {
                                let scale = getScale(geometry: geometry)
                                let menuImage = menuImageNames[index]
                                Image(menuImage)
                                    .resizable()
                                    .menuImageViewStyle(imageWidth: imageWidth, scale: scale)
                            })
                        })
                        .frame(width: 320, height: 420)
                    }
                })
                .padding(32)
            }
        })
        .navigationTitle("Representative Menu")
    }
}

#Preview {
    RepresentativeMenuView(
        menuImageNames: [
            "superMario",
            "superMario",
            "superMario",
            "superMario",
            "superMario",
            "superMario",
            "superMario",
            "superMario",
            "superMario",
        ],
        imageWidth: 250
    )
}


