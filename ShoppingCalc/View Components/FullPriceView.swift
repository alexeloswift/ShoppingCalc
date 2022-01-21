//
//  FullPriceView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

struct FullPriceView: View {
    
    @Binding var price: String
    
    private var fullPrice: FullPrice {
        FullPrice.init(title: "Full Price")
    }
    
    var body: some View {
        
            VStack(alignment: .center) {
                
                Text(fullPrice.title)
                
                HStack {
                   
                        
                Text("$")
                    
                TextField("0.00", text: $price)
                    .keyboardType(.decimalPad)
                    .accessibilityLabel("Full Price")
                    .multilineTextAlignment(.center)
                    .frame(width: 100,alignment: .center)
                    }
                }
                .font(.system(.body, design: .monospaced))
                .padding([.trailing])
            }
        }


struct FullPriceView_Previews: PreviewProvider {
    static var previews: some View {
        FullPriceView(price: .constant("0.00"))
            .previewLayout(.sizeThatFits)
    }
}
