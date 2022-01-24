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
    @State var taxPercentage: Double = 0.07
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(UIColor.systemGray6)
                    .ignoresSafeArea()
                VStack {
                Spacer()
                
                TotalAfterDiscountView(priceAfterDiscount: $priceAfterDiscount, discountPercentage: $discountPercentage, price: $price, taxPercentage: $taxPercentage)
                        .modifier(TotalViewMod())
                        .padding()
                    
                NewTotalView(taxPercentage: $taxPercentage, priceAfterDiscount: $priceAfterDiscount, discountPercentage: $discountPercentage, price: $price)
                        .modifier(NewTotalViewMod())
                        
                    
                GeometryReader { geo in
                    HStack {
                        DiscountView(discountPercentage: $discountPercentage)
                            .modifier(SmallViewsMod())
                            
                            Divider()
                                .frame(height: 90, alignment: .center)
                                .padding(25)

                    FullPriceView(price: $price)
                            .modifier(SmallViewsMod())
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
                .navigationTitle("ShoppingCalc")
                .padding(.top, 50)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .keyboard) {
                        
                        Button(action: {
                            hideKeyboard()
                        }, label: {
                            Image(systemName: "keyboard.chevron.compact.down").modifier(AccentIcons())})
                    
                        }
                    }
                }
            }
        }
    }

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
    
struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
            .preferredColorScheme(.dark)
    }
}
