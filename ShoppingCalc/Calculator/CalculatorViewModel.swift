//
//  CalculatorViewModel.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 2/7/22.
//

import SwiftUI

class CalculatorViewModel: ObservableObject {
    
    @Environment(\.managedObjectContext) var moc
    
    @FetchRequest(entity: Item.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \Item.priceAfterDiscount, ascending: true) ])
    var items: FetchedResults<Item>
    
    let viewContext = PersistenceController.sharedPersistenceController.persistentStoreContainer.viewContext

    
//    private (set) var context: NSManagedObjectContext
//    
//    init(context: NSManagedObjectContext) {
//        self.context = context
//    }


    
    //    Input
    @Published var discountPercentage: Int = 50
    @Published var price: String = "0.00"
    @Published var taxPercentage: Double = 0.07
    
    //    Output
    @Published var priceAfterDiscountWithTax: Double = 0.0
    @Published var priceAfterDiscount: Double = 0.0
    @Published var taxesAmountAfterDiscount: Double = 0.0
    
    
    func calculateNewTotal(price: String, discountPercentage: Int) -> Double {
        
        let priceAsDouble = Double(price) ?? 0.0
        let discountPercentageAsDouble = Double(discountPercentage)
        
        let amountOff = priceAsDouble / 100 * discountPercentageAsDouble
        let priceCalculatedWithoutTax = priceAsDouble - amountOff
        
        return priceCalculatedWithoutTax
    }
    
    func calculateTaxAmount(price: String, discountPercentage: Int, taxPercentage: Double) -> Double {
        
        let priceAsDouble = Double(price) ?? 0.0
        let discountPercentageAsDouble = Double(discountPercentage)
        
        let amountOff = priceAsDouble / 100 * discountPercentageAsDouble
        let taxCalculated = (priceAsDouble - amountOff) * taxPercentage
        
        return taxCalculated
    }
    
    func calculateNewTotalWithTax(price: String, discountPercentage: Int, taxPercentage: Double) -> Double {
        
        let priceAsDouble = Double(price) ?? 0.0
        let discountPercentageAsDouble = Double(discountPercentage)
        
        let amountOff = priceAsDouble / 100 * discountPercentageAsDouble
        let taxCalculated = (priceAsDouble - amountOff) * taxPercentage
        let priceCalculatedWithoutTax = priceAsDouble - amountOff
        let newTotalWithTax = priceCalculatedWithoutTax + taxCalculated
        
        return newTotalWithTax
    }
    
    func presentCalculation() {
        
        priceAfterDiscount = calculateNewTotal(price: price, discountPercentage: discountPercentage)
        priceAfterDiscountWithTax = calculateNewTotalWithTax(price: price, discountPercentage: discountPercentage, taxPercentage: taxPercentage)
        taxesAmountAfterDiscount = calculateTaxAmount(price: price, discountPercentage: discountPercentage, taxPercentage: taxPercentage)
    }
    
    func reset() {
        
        price = ""
        priceAfterDiscount = 0.0
        priceAfterDiscountWithTax = 0.0
        taxesAmountAfterDiscount = 0.0
    }
    
    func save(completion: @escaping (Error?) -> () = {_ in}) {
        if viewContext.hasChanges {
            do {
                try viewContext.save()
                completion(nil)
            } catch {
                completion(error)
            }
        }
    }
}
