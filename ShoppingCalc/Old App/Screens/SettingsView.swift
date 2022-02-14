//
//  SettingsView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/24/22.
//

import SwiftUI

struct SettingsView: View {
    
    
    @Binding var taxPercentage: Double
    
//    var tax: Int {
//        Int(taxPercentage)
//    }
    
    let taxPercentages = 0..<101

    
    var body: some View {
        NavigationView {
            Form {
                
                Picker("Tax Percentage", selection: $taxPercentage) {
                    ForEach(taxPercentages) {
                        Text("\($0) %")
                        
                    }

                }
            }
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(taxPercentage: .constant(0.07))
    }
}
