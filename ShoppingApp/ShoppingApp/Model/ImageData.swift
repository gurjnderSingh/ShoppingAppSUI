//
//  ImageData.swift
//  ShoppingApp
//
//  Created by Gurjinder Singh on 30/10/23.
//

import Foundation

struct FruitModel {
    var id: Int
    var title: frutiTitle
    var image, price, color: String
}

enum frutiTitle: String {
    case apple, apricot, avocado, banana, blackBerry, cherry, dragonfruit, fig, grapes, kiwi, lemon, mango, muskmelon, orange, papaya, pear, pineapple, plum, raspberry, strawberry, watermelon
}
