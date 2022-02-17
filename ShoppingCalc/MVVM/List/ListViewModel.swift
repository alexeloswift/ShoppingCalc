//
//  ListViewModel.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 2/15/22.
//

import SwiftUI

class ListViewModel: ObservableObject {
    
    @Published var listItems: [List] = []
    
    @ObservedObject private var viewmodel = CalculatorViewModel()
    @Published private var title = ""
    
    init() {
        addItemsToList()
    }
    
    func addItemsToList() {
//        listItems = listData
    }
    
    
   
        
    
}
