//
//  CalculatorView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 2/7/22.
//

import SwiftUI

struct CalculatorView: View {
    
    @Environment(\.managedObjectContext) var viewContext
    
    
    @ObservedObject private var viewmodel = CalculatorViewModel()
    
    let discountPercentages = 0..<101
    
    var body: some View {
        
        NavigationView {
            ZStack {
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
                                VStack{
                                    Text("Disount")
                                    Picker("Discount Percentage", selection: $viewmodel.discountPercentage) {
                                        ForEach(discountPercentages) {
                                            Text("\($0) %")
                                            
                                        }}
                                    
                                }
                                .modifier(SmallViewsMod())
                                VStack{
                                    Text("Full Price")
                                    TextField(viewmodel.price, text: $viewmodel.price)
                                }
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
                                    .modifier(AccentIcons())
                                    .foregroundColor(.primary)
                                    .padding(10)
                                    .overlay(
                                        Capsule()
                                            .stroke(Color(UIColor.systemGray4), lineWidth: 3))
                                
                                Button("calculate", action: viewmodel.presentCalculation)
                                    .font(.system(.body, design: .monospaced))
                                    .font(.title3)
                                    .padding(3)
                                    .modifier(AccentIcons())
                                    .foregroundColor(.primary)
                                    .padding(10)
                                    .overlay(
                                        Capsule()
                                            .stroke(Color(UIColor.systemGray4), lineWidth: 3))
                            }
                            
                            Button("Save") {
                                
                                let newItem = Item(context: self.viewmodel.moc)
                                
                                newItem.price = self.viewmodel.price
                                newItem.priceAfterDiscountWithTax = self.viewmodel.priceAfterDiscountWithTax
                                newItem.priceAfterDiscount = self.viewmodel.priceAfterDiscount
                                newItem.discountPercentage = Double(self.viewmodel.discountPercentage)
                                newItem.taxPercentage = self.viewmodel.taxPercentage
                                newItem.taxesAmountAfterDiscount = self.viewmodel.taxesAmountAfterDiscount
                                
                                try? self.viewmodel.moc.save()
                                
                                
                                print(newItem.priceAfterDiscount)
                                print(newItem.priceAfterDiscountWithTax)
                                
                            }
                        }
                    }
                }
                
                .navigationBarTitle("ShoppingCalc")
                
                
                .navigationBarItems(leading: Button(action: {
                    
                    // ADD BUTTON FUNCTIONALITY
                    
                }, label: {
                    Image(systemName: "sidebar.leading").modifier(AccentIcons())
                    
                    
                }), trailing: Button(action: {
                    
                    // ADD BUTTON FUNCTIONALITY
                    
                }, label: {
                    Image(systemName: "plus.circle").modifier(AccentIcons())
                }))
                
                
                
                
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
