//
//  MainView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

struct AccentIcons: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(UIColor.systemYellow))
    }
}

struct View1: View {
    var body: some View {
        CalculatorView()
    }
}

struct View2: View {
    var body: some View {
        ListView()
    }
}



struct MainView: View {
    
    @State var menuOpened = false

    
    var body: some View {
        
        NavigationView {
            ZStack {
              
            TabView {
                View1()
                    .tabItem {
                        Label("Calculator", systemImage: "list.dash")
                    }

                View2()
                    .tabItem {
                        Label("List", systemImage: "square.and.pencil")
                    
                        }
                    
                    }
            .accentColor(Color(UIColor.systemYellow))
                SideMenu(width: 230, menuOpened: menuOpened, toggleMenu: toggleMenu)
                }
            .edgesIgnoringSafeArea(.all)


            .toolbar {
                                   
               ToolbarItem(placement: .navigationBarLeading) {
                   if !menuOpened {
                   Button(action: {
                       self.menuOpened.toggle()
                   }, label: {
                          Image(systemName: "sidebar.leading").modifier(AccentIcons())
                      })
                   }
               }
           }
           

                }
            }
    
    func toggleMenu() {
       menuOpened.toggle()
   }
        }
        

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .preferredColorScheme(.dark)
            
    }
}
