//
//  ListView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

struct ListView: View {
    
    @State private var description = ""
    
    @Binding var discountPercentage: Int
    @Binding var fullPrice: String
    @Binding var totalAfterDiscountPrice: Double
    @Binding var taxPercentage: Int
    @Binding var addToList: Bool
    
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(UIColor.systemGray6)
                    VStack {
                        Text("")
                        Text("Discount Percentage: \(discountPercentage)%")
                        Text("Tax Percentage: \(taxPercentage)%")
                        Text("Full Price: $\(fullPrice)")
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
        ListView(discountPercentage: .constant(20), fullPrice: .constant(""), totalAfterDiscountPrice: .constant(0.0), taxPercentage: .constant(7), addToList: .constant(true))
    }
}
