//
//  TaxView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/21/22.
//

import SwiftUI

struct TaxView: View {
        
        @Binding var taxPercentage: Double
        @Binding var priceAfterDiscount: Double
        @Binding var discountPercentage: Int
        @Binding var price: String
    
    var amountAfterDiscount: Double {
        Double(priceAfterDiscount)
    }
    
    var totalTaxAmount: Double {

        let priceTotal = amountAfterDiscount
        let percentSelection = Double(discountPercentage)
        let tax = taxPercentage
    
        let amountOff = priceTotal / 100 * percentSelection
        let priceCalculated = (priceTotal - amountOff) * tax

        return priceCalculated
    }
        
        let taxPercentages = 0..<101
        
        var body: some View {
            
                VStack {
                    
                    Text("Tax")
                        .padding(.bottom, 3)

                    Text("$\(totalTaxAmount, specifier: "%. 2f") ")
                    }
            .font(.system(.body, design: .monospaced))
            }
        }

struct TaxView_Previews: PreviewProvider {
    static var previews: some View {
        TaxView(taxPercentage: .constant(0.07), priceAfterDiscount: .constant(0.0), discountPercentage: .constant(20), price: .constant("0.00"))
    }
}
