//
//  ListModel.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 2/15/22.
//

import Foundation

struct List: Identifiable {
    var id = UUID()
    var title: String
    var discountPercentage: Int
    var price: String
    var taxPercentage: Double
    var priceAfterDiscountWithTax: Double
    var priceAfterDiscount: Double
    var taxesAmountAfterDiscount: Double
}

