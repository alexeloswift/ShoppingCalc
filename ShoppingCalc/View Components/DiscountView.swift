//
//  DiscountView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

struct DiscountView: View {
    
    
    @Binding var discountPercentage: Int 
    
    let discountPercentages = 0..<101
    
    private var discount: Discount {
        Discount.init(title: "Discount")
    }
    
    var body: some View {
        
            VStack(alignment: .center) {
            Text(discount.title)
            
           
            
            HStack {
                
                Picker("Discount Percentage", selection: $discountPercentage) {
                    ForEach(discountPercentages) {
                        Text("\($0)")
                    }
                }
                
                Text("%")
            }
            .padding(-3)
        }
            .padding([.trailing, .leading])
        .font(.system(.body, design: .monospaced))
        
    }
}
struct DiscountView_Previews: PreviewProvider {
    static var previews: some View {
        DiscountView(discountPercentage: .constant(50))
            .previewLayout(.sizeThatFits)
    }
}
