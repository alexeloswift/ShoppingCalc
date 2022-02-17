//
//  MainView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 2/14/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                TabView {
                    CalculatorView()
                        .tabItem {
                            Label("Calculator", systemImage: "list.dash")
                        }
                    
                    ListView()
                        .tabItem {
                            Label("List", systemImage: "square.and.pencil")
                            
                        }
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
