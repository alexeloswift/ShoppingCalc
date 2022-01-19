//
//  DiscountView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

struct DiscountView: View {
    
    @State private var discountPercentage = 20
    
    let discountPercentages = 0..<101
    
    private var discount: Discount {
        Discount.init(title: "Discount")
    }
    
    var body: some View {
        GeometryReader { geo in
            
            VStack(alignment: .center) {
            
            Text(discount.title)
            
            Divider()
                .frame(width: 150)
            
            HStack {
                
                Picker("Discount Percentage", selection: $discountPercentage) {
                    ForEach(discountPercentages) {
                        Text("\($0)")
                    }
                }
                
                Text("%")
            }
        }
        .font(.system(.body, design: .monospaced))
        .frame(width: geo.size.width / 2, height: 100, alignment: .center)
        }
        
    }
}
struct DiscountView_Previews: PreviewProvider {
    static var previews: some View {
        DiscountView()
    }
}
