//
//  DetailedListView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 2/21/22.
//

import SwiftUI

struct DetailedListView: View {

   
    
    @State private var showingDeleteAlert = false

    var body: some View {
        GeometryReader { geometry in
            VStack {
           

//                Text(item.price ?? " ")
               

               

            }
        }
//        .navigationBarTitle(Text(item.title ?? "Item"), displayMode: .inline)
        .alert(isPresented: $showingDeleteAlert) {
            Alert(title: Text("Delete item"), message: Text("Are you sure?"), primaryButton: .destructive(Text("Delete")) {
//                    self.deleteItem()
                }, secondaryButton: .cancel()
            )
        }
        .navigationBarItems(trailing: Button(action: {
            self.showingDeleteAlert = true
        }) {
            Image(systemName: "trash")
        })
    }


}

