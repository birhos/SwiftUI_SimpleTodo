//
//  CoreDataManager.swift
//  simple.todo
//
//  Created by Haydar Demir on 30.10.2021.
//

import Foundation
import CoreData

class CoreDataManager {
    let persistentContainer: NSPersistentContainer
    static let shared: CoreDataManager = CoreDataManager()

    private init() {
        persistentContainer = NSPersistentContainer(name: "SimpleTodoModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to initialize Core Data \(error)")
            }
        }
    }
}