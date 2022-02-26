//
//  ShoppingCalcApp.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

@main
struct ShoppingCalcApp: App {
    
    
    var body: some Scene {
        WindowGroup {
            
            let viewContext = PersistenceController.sharedPersistenceController.persistentStoreContainer.viewContext
            
            MainView()
                .environment(\.managedObjectContext, viewContext)
                
        }
    }
}
