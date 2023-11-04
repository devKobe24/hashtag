//
//  AppTabView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/4/23.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem {
                    Label("Map",systemImage: SFSymbols.map.imageName)
                }
            
            LocationListView()
                .tabItem {
                    Label("Locations",systemImage: SFSymbols.building.imageName)
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile",systemImage: SFSymbols.person.imageName)
                }
        }
        .tint(.brandPrimaryColor)
    }
}

#Preview {
    AppTabView()
}
