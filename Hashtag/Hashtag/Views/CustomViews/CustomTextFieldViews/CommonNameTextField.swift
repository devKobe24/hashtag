//
//  CommonNameTextField.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/6/23.
//

import SwiftUI

struct CommonNameTextField: View {
    @State private var firstName = ""
    @State private var lastName = ""
    
    var isFirsName: Bool
    
    var body: some View {
        TextField(
            isFirsName ? "First Name" : "Last Name",
            text: isFirsName ? $firstName : $lastName
        ).profileNameStyle()
    }
}

#Preview {
    CommonNameTextField(isFirsName: true)
}
#Preview {
    CommonNameTextField(isFirsName: false)
}
