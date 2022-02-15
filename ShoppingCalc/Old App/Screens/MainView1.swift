//
//  MainView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI



struct View1: View {
    var body: some View {
        CalcView()
    }
}

struct View2: View {
    @Binding var discountPercentage: Int
    @Binding var fullPrice: String
    @Binding var totalAfterDiscountPrice: Double
    @Binding var taxPercentage: Int
    @Binding var addToList: Bool
    var body: some View {
        ListView(discountPercentage: $discountPercentage, fullPrice: $fullPrice, totalAfterDiscountPrice: $totalAfterDiscountPrice, taxPercentage: $taxPercentage, addToList: $addToList)
    }
}



struct MainView1: View {
    
    @State var menuOpened = false
    
    @Binding var discountPercentage: Int
    @Binding var fullPrice: String
    @Binding var totalAfterDiscountPrice: Double
    @Binding var taxPercentage: Int
    @Binding var addToList: Bool

    var body: some View {
        
        NavigationView {
            ZStack {
              
            TabView {
                View1()
                    .tabItem {
                        Label("Calculator", systemImage: "list.dash")
                    }

                View2(discountPercentage: $discountPercentage, fullPrice: $fullPrice, totalAfterDiscountPrice: $totalAfterDiscountPrice, taxPercentage: $taxPercentage, addToList: $addToList)
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
                       withAnimation(.interactiveSpring(response: 0.66, dampingFraction: 0.5, blendDuration: 0.1)) {
                           self.menuOpened.toggle()}
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
        

struct MainView1_Previews: PreviewProvider {
    static var previews: some View {
        MainView1(discountPercentage: .constant(20), fullPrice: .constant(""), totalAfterDiscountPrice: .constant(0.0), taxPercentage: .constant(7), addToList: .constant(true))
            .preferredColorScheme(.dark)
            
    }
}
