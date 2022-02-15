//
//  CalculatorView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 2/7/22.
//

import SwiftUI

struct CalculatorView: View {
    
    let discountPercentages = 0..<101

    
    @ObservedObject private var viewmodel = CalculatorViewModel()
    
    var body: some View {
        
        NavigationView {
            ZStack {
                LinearGradient(colors: [Color.pink, Color.indigo], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
             
            GeometryReader { geo in
                ScrollView {
                    VStack {
                        
                        VStack {
                            VStack {
                                Text("New Total")
                                Text ("\(viewmodel.priceAfterDiscount, specifier: "%. 2f")")
                                        .accessibilityLabel("Full Price")
                                        .padding(1)
                                
                            }
                            
                            Divider().frame(width: 200)
                            
                            VStack {
                                Text("Taxes")
                            
                                Text("\(viewmodel.taxesAmountAfterDiscount, specifier: "%. 2f")")
                                    .padding(1)
                                    }
                                }
                                .modifier(NewTotalViewMod())
                                .padding()

                        VStack {
                            Text("New Total With Taxes")
                            Text("\(viewmodel.priceAfterDiscountWithTax, specifier: "%. 2f")")
                                .padding(1)
                        }
                            .modifier(NewTotalWithTaxViewMod())

                        
                        HStack {
                            Picker("Discount Percentage", selection: $viewmodel.discountPercentage) {
                                ForEach(discountPercentages) {
                                        Text("\($0)")
                                }}
                            .modifier(SmallViewsMod())
                        
                            
                            TextField(viewmodel.price, text: $viewmodel.price)
                                .keyboardType(.decimalPad)
                                .accessibilityLabel("Full Price")
                                .multilineTextAlignment(.center)
                                .modifier(SmallViewsMod())
                                .onTapGesture {
                                    viewmodel.reset()
                                    }
                                }
                                .frame(width: geo.size.width, height: 100, alignment: .center)
                        
                        Spacer()
                            .padding()
                        
                        HStack {
                            Button("clear", action: viewmodel.reset)
                                .font(.system(.body, design: .monospaced))
                                .font(.title3)
                                .padding(3)
                                .foregroundColor(.primary)
                                .padding(10)
                                .overlay(
                                  Capsule()
                                      .stroke(Color(UIColor.systemYellow).opacity(0.7), lineWidth: 3))
                            Button("calculate", action: viewmodel.presentCalculation)
                                .font(.system(.body, design: .monospaced))
                                .font(.title3)
                                .padding(3)
                                .foregroundColor(.primary)
                                .padding(10)
                                .overlay(
                                  Capsule()
                                      .stroke(Color(UIColor.systemYellow).opacity(0.7), lineWidth: 3))
                            }
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
