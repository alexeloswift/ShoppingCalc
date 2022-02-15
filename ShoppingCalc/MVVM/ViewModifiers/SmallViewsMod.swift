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
            .font(.system(.body, design: .monospaced))
            .foregroundColor(.primary)
            .frame(width: 150, height: 80, alignment: .center)
            .overlay(
                RoundedRectangle(cornerRadius: 17)
                    .stroke(Color(UIColor.systemGray4), lineWidth: 3))

            }
        }
