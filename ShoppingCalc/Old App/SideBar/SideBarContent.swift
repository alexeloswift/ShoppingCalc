//
//  SideBarContent.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/22/22.
//

import SwiftUI


struct SideBarContent: View {
    
    let items = [
        MenuItem(text: "History",imageName: "list.bullet.circle"),
        MenuItem(text: "Settings", imageName: "gear")
    
    ]
    
    var body: some View {
        ZStack {
            
            Color(UIColor(red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 1))
            
            VStack(alignment: .leading, spacing: 0) {
                
                
                ForEach(items) { item in
                    HStack{
                        Image(systemName: item.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.white)
                            .frame(width: 32, height: 32, alignment: .center)
                            
                        Text(item.text)
                            .foregroundColor(.white)
                            .bold()
                            .font(.title2)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                    }
                    
                    .padding()
                    Divider()
                    
                }
           
                
                Spacer()
            }
            .padding(.top, 25)
            
        }
    }
}

struct SideMenu: View {
    
    let width: CGFloat
    let menuOpened: Bool
    let toggleMenu: () -> Void
    
    
    public var body: some View {
        ZStack {
            GeometryReader { _ in
                EmptyView()
            }
            .background(Color.gray.opacity(0.15))
            .opacity(self.menuOpened ? 1 : 0)
            .onTapGesture {
                self.toggleMenu()
            }
            
            HStack {
                SideBarContent()
                    .frame(width: width)
                    .offset(x: menuOpened ? 0 : -width)
                    .scaleEffect(menuOpened ? 1 : 1)                
                Spacer()
            }
        }
    }
}


struct SideBarContent_Previews: PreviewProvider {
    static var previews: some View {
        SideBarContent()
    }
}
    



    
