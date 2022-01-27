//
//  TotalAfterDiscountView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/18/22.
//

import SwiftUI



struct TotalAfterDiscountView: View {
    
    @Binding var priceAfterDiscount: Double
    @Binding var discountPercentage: Int
    @Binding var price: String
    @Binding var taxPercentage: Double
    
    var amountAfterDiscount: Double {
        Double(priceAfterDiscount)
    }
    
    var totalAmount: Double {

        let priceTotal = amountAfterDiscount
        let percentSelection = Double(discountPercentage)
    
        let amountOff = priceTotal / 100 * percentSelection
        let priceCalculated = priceTotal - amountOff

        return priceCalculated
    }
    
    var totalAfter: TotalAfterDiscount {
        TotalAfterDiscount.init(title: "Total After Discount", totalAfterDiscountPrice: totalAmount)
    }
    
    var body: some View {
        
            VStack {
                
                Text("\(totalAfter.title)")
                
                GeometryReader { geo in
                    VStack {
                        
                        Text ("$\(totalAfter.totalAfterDiscountPrice, specifier: "%. 2f") ")
                            .keyboardType(.decimalPad)
                            .accessibilityLabel("Full Price")
                            .multilineTextAlignment(.center)
                            .frame(width: geo.size.width,alignment: .center)
                            
                        Divider()
                            .frame(width: 250, alignment: .center)
        
                        TaxView(taxPercentage: $taxPercentage, priceAfterDiscount: $priceAfterDiscount, discountPercentage: $discountPercentage, price: $price)
                            }
                            .multilineTextAlignment(.center)
                            .frame(width: geo.size.width,alignment: .center)
                        }
                    }
                    .font(.system(.body, design: .monospaced))
                }
            }

struct TotalAfterDiscountView_Previews: PreviewProvider {
    static var previews: some View {
        TotalAfterDiscountView(priceAfterDiscount: .constant(0.0), discountPercentage: .constant(50), price: .constant("0.00"), taxPercentage: .constant(0.07))
    }
}
