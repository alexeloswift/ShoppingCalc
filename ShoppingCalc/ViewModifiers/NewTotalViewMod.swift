//
//  NewTotalViewMod.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 1/23/22.
//

import SwiftUI

struct NewTotalViewMod: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.primary)
            .frame(width: 300, height: 70, alignment: .center)
            .padding(.top, 20)
            .padding(.horizontal, 5)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(UIColor.systemGray4), lineWidth: 3))
            }
        }
