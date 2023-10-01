//
//  SlayApp.swift
//  Slay
//
//  Created by 이윤지 on 10/1/23.
//

import SwiftUI
//초기화면
@main
struct SlayApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TabBar(selectedYoutube: .constant(nil), selectedBrand: .constant(nil))
          //  youtuve()
            // ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            
        }
    }
}
