//
//  DiscountView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

struct DiscountView: View {
    
    @State private var discountPercentage = 20
    
    let discountPercentages = 1..<101
    
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
//            .padding(.top)
//            .padding(.bottom)
        .font(.system(.body, design: .monospaced))
        
    }
}
struct DiscountView_Previews: PreviewProvider {
    static var previews: some View {
        DiscountView()
            .previewLayout(.sizeThatFits)
    }
}
