//
//  FullPriceView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

struct FullPriceView: View {
    
    @State private var price = ""
    
    private var fullPrice: FullPrice {
        FullPrice.init(title: "Full Price")
    }
    
    var body: some View {
        
        GeometryReader { geo in
            VStack(alignment: .center) {
                
                Text(fullPrice.title)
                
                Divider()
                    .frame(width: 150)
                
                HStack {
                   
                        
                Text("$")
                    
                TextField("0.00", text: $price)
                    .keyboardType(.decimalPad)
                    .accessibilityLabel("Full Price")
                    .multilineTextAlignment(.center)
                    .frame(width: 100,alignment: .center)
                    }
                
                
            }
                .frame(width: geo.size.width / 2, height: 100, alignment: .center)
            
                                
        
                .font(.system(.body, design: .monospaced))
                        .accessibilityLabel("Full Price")
            }
        }
}

struct FullPriceView_Previews: PreviewProvider {
    static var previews: some View {
        FullPriceView()
    }
}
