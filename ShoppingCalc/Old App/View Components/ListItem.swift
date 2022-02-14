//
//  ListItem.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/23/22.
//

import SwiftUI

struct ListItem: View {
    @Binding var description: String
    @Binding var fullPrice: String
    @Binding var totalAfterDiscountPrice: Double
    @Binding var taxPercentage: Int
    @Binding var discountPercentage: Int
    
    private var list: List {
        List.init(
                  title: description,
                  fullPrice: fullPrice,
                  totalAfterDiscountPrice: totalAfterDiscountPrice,
                  taxPercentage: taxPercentage,
                  discountPercentage: discountPercentage
        )}
    var body: some View {
        
        
            Form {
            TextField("add a description...", text: $description)
                    .font(.system(.body, design: .monospaced))


            Text("Discount: \(list.discountPercentage) %")
            Text("$\(list.totalAfterDiscountPrice, specifier: "%. 2f") ")
            Text(list.fullPrice)
            
        }

        
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem(description: .constant(""), fullPrice: .constant("$0.00"), totalAfterDiscountPrice: .constant(0.0), taxPercentage: .constant(7), discountPercentage: .constant(20))
    }
}
