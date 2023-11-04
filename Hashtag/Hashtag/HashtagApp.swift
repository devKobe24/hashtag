//
//  HashtagApp.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/4/23.
//

import SwiftUI

@main
struct HashtagApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
