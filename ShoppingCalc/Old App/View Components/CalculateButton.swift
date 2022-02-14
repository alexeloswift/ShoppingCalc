//
//  CalculateButton.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/20/22.
//

import SwiftUI


struct CalculateButton: View {
    
    @Binding var priceAfterDiscount: Double
    @Binding var price: String

    @State var calculateButtonPressed = false
    
    var body: some View {
        
        Button(action: {
            self.priceAfterDiscount = Double(price) ?? 0.00
        }, label: {
            Text("calculate")
                .font(.system(.body, design: .monospaced))
        })
              .font(.title3)
              .padding(3)
              .foregroundColor(.primary)
              .padding(10)
              .overlay(
                Capsule()
                    .stroke(Color(UIColor.systemYellow).opacity(0.7), lineWidth: 3))
        }
    }

struct CalculateButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculateButton(priceAfterDiscount: .constant(0.00), price: .constant("0.00"))
            .previewLayout(.sizeThatFits)
    }
}
