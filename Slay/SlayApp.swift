//
//  SlayApp.swift
//  Slay
//
//  Created by 이윤지 on 10/1/23.
//

import SwiftUI

@main
struct SlayApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
