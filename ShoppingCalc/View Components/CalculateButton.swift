//
//  CalculateButton.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/20/22.
//

import SwiftUI



struct CalculateButton: View {
    
    @State private var salePercentage = 20
    @State private var priceAfterDiscount = ""
    
    private var amountAfterDiscount: Double {
        Double(priceAfterDiscount) ?? 0
    }
    
    var totalAmount: Double {

        let priceTotal = Double(priceAfterDiscount)
        let percentSelection = Double(salePercentage)
    
        let amountOff = priceTotal ?? 0 / 100 * percentSelection
        let priceCalculated = priceTotal ?? 0 - amountOff

        return priceCalculated
    }
        
        var totalAfterDiscount: TotalAfterDiscount {
            TotalAfterDiscount.init(title: "Total After Discount", totalAfterDiscountPrice: totalAmount)
    }
    
    var body: some View {
        Button("calculate", action: presentCalculation)
              .font(.title3)
              .padding(3)
              .foregroundColor(Color.blue)
              .padding(10)
              .overlay(
                    
        Capsule()
              .stroke(LinearGradient(gradient: Gradient(colors: [.init(red: 0.58, green: 0.25, blue: 0.7), .init(red: 0.6, green: 1, blue: 1)]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 3))
    }
    
    func calculation(calculate: Double) -> Double {
        return totalAmount
    }
    
    func presentCalculation() {
        let _ = calculation(calculate: amountAfterDiscount)
    }
}


struct CalculateButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculateButton()
            .previewLayout(.sizeThatFits)
    }
}
