//
//  DietSnapApp.swift
//  DietSnap
//
//  Created by ANSH on 02/04/24.
//

import SwiftUI

@main
struct DietSnapApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
