//
//  NihonikoApp.swift
//  Nihoniko
//
//  Created by Paulo César on 04/02/23.
//

import SwiftUI

@main
struct NihonikoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
