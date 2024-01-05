//
//  PurchasesApp.swift
//  Purchases
//
//  Created by User on 1/5/24.
//

import SwiftUI

@main
struct PurchasesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
