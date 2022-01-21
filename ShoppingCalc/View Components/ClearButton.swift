//
//  ClearButton.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/20/22.
//

import SwiftUI




struct ClearButton: View {
    
    @Binding var priceAfterDiscount: Double
    @Binding var price: String
    @Binding var discountPercentages: Int
    
    
    
    var body: some View {
        Button("clear", action: reset)
        .font(.title3)
          .padding(3)
          .foregroundColor(Color.blue)
          .padding(10)
          .overlay(
            Capsule()
            .stroke(LinearGradient(gradient: Gradient(colors: [.init(red: 0.58, green: 0.25, blue: 0.7), .init(red: 0.6, green: 1, blue: 1)]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 3))
    }
    
    func reset() {
        self.price = ""
        self.priceAfterDiscount = 0.00
        self.discountPercentages = discountPercentages
    }
}

struct ClearButton_Previews: PreviewProvider {
    static var previews: some View {
        ClearButton(priceAfterDiscount: .constant(0.0), price: .constant("0.00"), discountPercentages: .constant(50))
    }
}
