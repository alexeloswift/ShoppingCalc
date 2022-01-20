//
//  TotalAfterDiscountView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/18/22.
//

import SwiftUI



struct TotalAfterDiscountView: View {
    
//    var total: CalculateButton {
//        totalAfterDiscount.
//    }
   
    
    
    
    
    var body: some View {
        
            VStack(alignment: .center) {
                
                Text("Total After Discount")
                
                Divider()
                    .frame(width: 150, alignment: .center)
                
                HStack {
                   
                        
                Text("$")
                    
                    Text ("\(total, specifier: "%. 2f") ")
                    .keyboardType(.decimalPad)
                    .accessibilityLabel("Full Price")
                    .multilineTextAlignment(.center)
                    .frame(width: 100,alignment: .center)
                    }
                }
                .font(.system(.body, design: .monospaced))
            }
}

struct TotalAfterDiscountView_Previews: PreviewProvider {
    static var previews: some View {
        TotalAfterDiscountView()
            .previewLayout(.sizeThatFits)
    }
}
