//
//  LocationListView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/4/23.
//

import SwiftUI

struct LocationListView: View {
    
    @State private var locations: [HTLocation] = [HTLocation(record: MockData.location)]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(locations, id: \.ckRecordID) { location in
                    NavigationLink {
                        LocationDetailView(location: location)
                    } label: {
                        LocationCell(location: location)
                    }
                }
            }
            .navigationTitle("Hashtag Spots")
        }
    }
}

#Preview {
    LocationListView()
}
