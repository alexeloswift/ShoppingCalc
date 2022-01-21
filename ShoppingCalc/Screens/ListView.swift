//
//  ListView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/17/22.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        NavigationView{
            ScrollView {
                
                List {
                    Text("1")
                    Text("2")
                    Text("3")
                }
            
            
        
       
        
            }
            .navigationTitle("List")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
