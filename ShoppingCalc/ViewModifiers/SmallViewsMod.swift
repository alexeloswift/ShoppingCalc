//
//  SmallViewsMod.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/23/22.
//

import SwiftUI

struct SmallViewsMod: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.primary)
            .frame(width: 150, height: 80, alignment: .center)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(UIColor.systemGray4), lineWidth: 3))
                    .padding(.horizontal, -25)
            }
        }
