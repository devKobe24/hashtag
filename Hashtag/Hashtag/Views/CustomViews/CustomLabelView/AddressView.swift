//
//  AddressView.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/6/23.
//

import SwiftUI

struct AddressView: View {
    var storeAddress: String
    var symbolImageName: String
    
    var body: some View {
        Label(storeAddress, systemImage: symbolImageName)
            .font(.caption)
            .foregroundStyle(.secondary)
    }
}

#Preview {
    AddressView(storeAddress: "Test Main Street 123", symbolImageName: SFSymbols.mappinAndEllipse.imageName)
}
