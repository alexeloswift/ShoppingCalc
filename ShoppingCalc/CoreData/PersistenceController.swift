//
//  PersistenceController.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 2/17/22.


import CoreData

class PersistenceController: ObservableObject {
    
    let persistentStoreContainer: NSPersistentContainer
        
    static let sharedPersistenceController = PersistenceController()
    

    init() {
        
        persistentStoreContainer = NSPersistentContainer(name: "CalculatorModel")

        
        persistentStoreContainer.loadPersistentStores{ description, error in
            if error != nil {
                fatalError("There has been an error with CoreData")
            }
        }
    }
    

    
//    func deleteItems(at offsets: IndexSet) {
//        for offset in offsets {
//            // find this book in our fetch request
//            let item = items[offset]
//            
//            // delete it from the context
//            moc.delete(item)
//        }
//        
//        // save the context
//        try? moc.save()
//    }
    

}


