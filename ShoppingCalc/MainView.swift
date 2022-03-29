//
//  MainView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 2/14/22.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject private var viewmodel: CalculatorViewModel
    
    var body: some View {
        CalculatorView()
            .environmentObject(viewmodel)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(CalculatorViewModel())
    }
}
