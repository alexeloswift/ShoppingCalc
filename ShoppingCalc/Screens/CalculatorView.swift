//
//  CalculatorView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

struct CalculatorView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Spacer()
                TotalAfterDiscountView()
                    .padding(.bottom, 30)
                
                GeometryReader { _ in
                HStack(alignment: .center) {
                    DiscountView().padding(.leading, 40)
                    
                    Divider().frame(height: 90, alignment: .center)
                        .padding(25)

                    FullPriceView()

                    }
                }
                
                HStack {
                    CalculateButton()
                    }
                }
                Spacer()
                    .padding(.bottom, 280)

            }
           
        .navigationTitle("Calculator")
        .font(.system(.body, design: .monospaced))

        }
        
    }




struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
