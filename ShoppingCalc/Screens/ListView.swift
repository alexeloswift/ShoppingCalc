//
//  ListView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

class Calculator: ObservableObject {
    @Published var items = [Calculator]()
    
}

struct ListView: View {
    
    @State private var title = ""
    @State private var fullPrice = ""
    @State private var totalAfterDiscountPRice = 0.0
    @State private var taxPercentage = 7
    @State private var discountPercentage = 20
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(UIColor.systemGray6)
                    VStack {
                        Text("hello")
                    }
                }
            
        
        
        .navigationTitle("ShoppingCalc")
        .padding(.top, 50)
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
