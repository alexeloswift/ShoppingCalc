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
            performCalculation()
            self.priceAfterDiscount = Double(price) ?? 0.00
            
        }, label: {
            Text("calculate")
        })
              .font(.title3)
              .padding(3)
              .foregroundColor(Color.blue)
              .padding(10)
              .overlay(
                    
        Capsule()
              .stroke(LinearGradient(gradient: Gradient(colors: [.init(red: 0.58, green: 0.25, blue: 0.7), .init(red: 0.6, green: 1, blue: 1)]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 3))
    }


    func performCalculation() {
        calculateButtonPressed = true
    }
        
      

}

struct CalculateButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculateButton(priceAfterDiscount: .constant(0.00), price: .constant("0.00"))
            .previewLayout(.sizeThatFits)
    }
}
