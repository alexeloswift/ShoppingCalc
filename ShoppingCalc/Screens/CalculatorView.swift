//
//  CalculatorView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

class Calculator: ObservableObject {
    @Published var items = [Calculator]()
}

struct CalculatorView: View {
    
    @State private var priceAfterDiscount: Double = 0.0
    @State private var discountPercentage: Int = 50
    @State private var price: String = "0.00"
    @State private var taxPercentage: Double = 0.07
    
    @State private var addToList: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(UIColor.systemGray6)
                    .ignoresSafeArea()
                GeometryReader { geo in
                    ScrollView {

                VStack {
                
                
                TotalAfterDiscountView(priceAfterDiscount: $priceAfterDiscount, discountPercentage: $discountPercentage, price: $price, taxPercentage: $taxPercentage)
                        .modifier(TotalViewMod())
                        .padding()
                    
                NewTotalView(taxPercentage: $taxPercentage, priceAfterDiscount: $priceAfterDiscount, discountPercentage: $discountPercentage, price: $price)
                        .modifier(NewTotalViewMod())
                        
                    
                    HStack {
                        DiscountView(discountPercentage: $discountPercentage)
                            .modifier(SmallViewsMod())
                            .padding(.trailing, 36)

                    FullPriceView(price: $price)
                            .modifier(SmallViewsMod())
                            .padding(.leading, 36)
                        }
                        .frame(width: geo.size.width, height: 100, alignment: .center)
                    
                Spacer()
                        .padding()
                
                    HStack {
                        ClearButton(priceAfterDiscount: $priceAfterDiscount, price: $price, discountPercentages: $discountPercentage)
                            
                        CalculateButton(priceAfterDiscount: $priceAfterDiscount, price: $price, calculateButtonPressed: true)
                            }
                        .frame(width: geo.size.width, alignment: .center)
                    
                    Button(action: {
                        self.addToList = true
                        addItemsToList()
                    }, label: {
                           Image(systemName: "plus.circle.fill").modifier(AccentIcons())
                           Text("ADD TO LIST").modifier(AccentIcons())
                               .font(.system(.body, design: .monospaced))
                        })
                        .frame(width: 150, height: 50, alignment: .center)
                
                        
                }
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
    

func addItemsToList() {
    if addToList == true {
        self.priceAfterDiscount = priceAfterDiscount
        self.price = price
        self.taxPercentage = taxPercentage
        self.discountPercentage = discountPercentage
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
