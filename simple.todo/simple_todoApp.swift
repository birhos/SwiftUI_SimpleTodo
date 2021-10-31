//
//  simple_todoApp.swift
//  simple.todo
//
//  Created by Haydar Demir on 30.10.2021.
//

import SwiftUI

@main
struct simple_todoApp: App {
    let persistentContainer = CoreDataManager.shared.persistentContainer

    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
