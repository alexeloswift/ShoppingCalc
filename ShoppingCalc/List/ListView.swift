//
//  ListView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 2/15/22.
//

import SwiftUI

struct ListView: View {



//    @ObservedObject private var viewmodel = ListViewModel()

//    @State private var showingAddScreen = false



    var body: some View {
        NavigationView {
            ScrollView {
                List {
//                    ForEach(viewmodel.items) { item in
//                        NavigationLink(destination: DetailedListView(item: item)) {
//                        EmojiRatingView(rating: book.rating)
//                            .font(.largeTitle)

//                            VStack(alignment: .leading) {
//                                Text(item.title ?? "Unknown Title")
//                                    .font(.headline)
//                                Text(item.price ?? "Unknown Price")
//                                    .foregroundColor(.secondary)
//                            }
//                        }
//                    }
//                    .onDelete(perform: viewmodel.deleteItems)
                }
                .navigationBarTitle("List")
                .navigationBarItems(trailing: EditButton())
                .navigationBarItems(leading: Button( action: {
                   
                }, label: {
                    Image(systemName: "sidebar.leading").modifier(AccentIcons())
                }))
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
