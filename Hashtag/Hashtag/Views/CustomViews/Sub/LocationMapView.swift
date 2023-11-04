//
//  LocationMapView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/4/23.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: CLLocationDegrees(36.323576),
            longitude: CLLocationDegrees(127.400703)
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.01,
            longitudeDelta: 0.01
        )
    )
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            
            VStack {
                Image(ImageAssets.hashtagMapLogo.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 70)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LocationMapView()
}
