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
    
    @State private var alertItem: AlertItem?
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            
            VStack {
                LogoView()
                
                Spacer()
            }
        }
        .alert("위치 에러", isPresented: $isPresented, actions: {
            
        }, message: {
            Text("이 위치를 찾을 수 없습니다.\n다시 시도해주세요.")
        })
        .onAppear {
            CloudKitManager.getLocations { result in
                switch result {
                case .success(let locations):
                    print(locations)
                case .failure(_):
                    isPresented = true
                }
            }
        }
    }
}

#Preview {
    LocationMapView()
}
