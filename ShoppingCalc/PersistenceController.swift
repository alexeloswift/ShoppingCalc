//
//  PersistenceController.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 2/17/22.
//

//import CoreData
//
//struct PersistenceController {
//    
//    static let shared = PersistenceController()
//    
//    let container: NSPersistentContainer
//    
//    init() {
//        container = NSPersistentContainer(name: "Name of core data model file")
//        container.loadPersistentStores{ (description, error) in
//            if let error = error {
//                fatalError()
//            }
//        }
//    }
//    
//    func save(completion: @escaping (Error?) -> () = {_ in}) {
//        let context = container.viewContext
//        if context.hasChanges {
//            do {
//                try context.save()
//                completion(nil)
//            } catch {
//                completion(error)
//            }
//        }
//    }
//    
//    func delete(_ object: NSManagedObject, completion: @escaping (Error?) -> () = {_ in}) {
//        let context = container.viewContext
//        context.delete(object)
//        save(completion: completion)
//    }
//}


