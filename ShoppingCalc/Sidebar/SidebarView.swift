//
//  SidebarView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 2/20/22.
//

import SwiftUI

struct SidebarView: View {
    
    @ObservedObject var viewmodel = SidebarViewModel()
    
    var body: some View {
        ZStack {
            Color(UIColor(red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 1))
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 10) {
                
                    
                    
                
            }
            
        }
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}
