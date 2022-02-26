//
//  SettingsView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 2/15/22.
//

import SwiftUI

struct SettingRowView : View {
    var title : String
    var systemImageName : String
    
    var body : some View {
        HStack (spacing : 15) {
            Image(systemName: systemImageName)
            Text (title)
        }
    }
}

struct SettingsView: View {
    

    
    var body: some View {
        
        NavigationView {
            Form {
             
            }
            .navigationTitle("Settings")
         
          

        }
            

        

    }
}
    

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
