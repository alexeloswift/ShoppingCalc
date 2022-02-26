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

                
//                .toolbar {
//                    ToolbarItem(placement: .navigationBarLeading) {
//                        Button(action: {
//                            withAnimation(.interactiveSpring(response: 0.66, dampingFraction: 0.5, blendDuration: 0.1)) {
//                                //                                           self.menuOpened.toggle()
//
//                            }
//                        }, label: {
//                            Image(systemName: "sidebar.leading").modifier(AccentIcons())
//                        })
//                    }
//                }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
