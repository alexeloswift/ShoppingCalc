//
//  SidebarViewModel.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 2/20/22.
//

import Foundation


class SidebarViewModel: ObservableObject {
    
    @Published var sidebarButtons: [SidebarItems] = []
    
    init() {
        addButtons()
    }
    
    func addButtons() {
        sidebarButtons = buttons
    }
    
    let buttons = [
        SidebarItems(text: "Settings", imageName: "gear"),
        SidebarItems(text: "History", imageName: "list.bullet.circle")
    ]
    
    
    
    
    
    
    
}
