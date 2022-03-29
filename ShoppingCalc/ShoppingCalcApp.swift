//
//  ShoppingCalcApp.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

@main
struct ShoppingCalcApp: App {
    
    @StateObject var viewmodel: CalculatorViewModel
    
    init() {
        self._viewmodel = StateObject(wrappedValue: CalculatorViewModel())
    }

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(viewmodel)
                
                
        }
    }
}
