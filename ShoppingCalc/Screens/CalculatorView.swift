//
//  CalculatorView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

struct CalculatorView: View {
    
    @State private var priceAfterDiscount: Double = 0.0
    @State private var discountPercentage: Int = 50
    @State var price: String = "0.00"
    
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Spacer()
                    
                TotalAfterDiscountView(priceAfterDiscount: $priceAfterDiscount, discountPercentage: $discountPercentage, price: $price)
                        .frame(width: 300, height: 100, alignment: .center)
                
                GeometryReader { geo in
                HStack {
                    
                    DiscountView(discountPercentage: $discountPercentage)
                    
                    Divider().frame(height: 90, alignment: .center)
                        .padding(25)

                    FullPriceView(price: $price)
                        .keyboardType(.decimalPad)

                        }
                    .frame(width: geo.size.width, height: 100, alignment: .center)
                }
                
                GeometryReader { geo in
                    HStack {
                    
                    ClearButton(priceAfterDiscount: $priceAfterDiscount, price: $price, discountPercentages: $discountPercentage)
                        
                    
                    CalculateButton(priceAfterDiscount: $priceAfterDiscount, price: $price, calculateButtonPressed: true)
                            }
                    .frame(width: geo.size.width, alignment: .center)
                        }
                    }
            .navigationTitle("Calculator")
            .padding(.top, 50)
            .navigationBarTitleDisplayMode(.automatic)
            
                }
            }
        }
    




struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
