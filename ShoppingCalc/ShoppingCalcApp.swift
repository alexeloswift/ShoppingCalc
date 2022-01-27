//
//  ShoppingCalcApp.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

@main
struct ShoppingCalcApp: App {
    
    @StateObject var calculator = Calculator()
    
    var body: some Scene {
        WindowGroup {
            MainView(discountPercentage: .constant(20), fullPrice: .constant(""), totalAfterDiscountPrice: .constant(0.0), taxPercentage: .constant(7), addToList: .constant(true))
                .environmentObject(calculator)
        }
    }
}
