//
//  CalculatorView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

struct CalculatorView: View {
    var body: some View {
        
//        GeometryReader { geo in
            VStack {
                HStack {
                    FullPriceView()
//                        .frame(width: (geo.size.width / 2) - 10, height: 100)
//                        .position(x: geo.size.width / 4, y: 50)

                    DiscountView()
//                        .frame(width: (geo.size.width / 2) - 10, height: 100)

                    }
                Text("Hello")
//        .frame(width: geo.size.width, height: 100)
            }
        }
    }
//}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
