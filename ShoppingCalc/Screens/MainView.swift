//
//  MainView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        CalculatorView()
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {
                           print("Button tapped")
                       }, label: {
                           Image(systemName: "arrowshape.turn.up.right.circle")
                       })
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
