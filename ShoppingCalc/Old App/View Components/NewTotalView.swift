//
//  NewTotalView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/23/22.
//

import SwiftUI

struct NewTotalView: View {
    @Binding var taxPercentage: Double
    @Binding var priceAfterDiscount: Double
    @Binding var discountPercentage: Int
    @Binding var price: String

var amountAfterDiscount: Double {
    Double(priceAfterDiscount)
}

var totalAmountWithTax: Double {

    let priceTotal = amountAfterDiscount
    let percentSelection = Double(discountPercentage)
    let tax = taxPercentage

    let amountOff = priceTotal / 100 * percentSelection
    let totalCalculated = (priceTotal - amountOff)
    let taxCalculated = totalCalculated * tax
    let priceCalculated = taxCalculated + totalCalculated
    
    return priceCalculated
}
    
    let taxPercentages = 0..<101
    
    var body: some View {
        
        GeometryReader { geo in
            VStack {
                Text("New Total")
                    .padding(.bottom, 3)

                Text("$\(totalAmountWithTax, specifier: "%. 2f") ")
                }
            .multilineTextAlignment(.center)
            .frame(width: geo.size.width,alignment: .center)
            }
        .font(.system(.body, design: .monospaced))
        .frame(width: 150, height: 70, alignment: .center)
    }
}

struct NewTotalView_Previews: PreviewProvider {
    static var previews: some View {
        NewTotalView(taxPercentage: .constant(0.07), priceAfterDiscount: .constant(0.0), discountPercentage: .constant(20), price: .constant("0.00"))
    }
}
