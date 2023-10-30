//
//  TopSellingView.swift
//  ShoppingApp
//
//  Created by Gurjinder Singh on 30/10/23.
//

import SwiftUI

struct TopSellingView: View {
    
    let images: [FruitModel] = [
        FruitModel.init(id: 0, title: .apple, image: "apple", price: "1.99$ each", color: "1"),
        FruitModel.init(id: 1, title: .apricot, image: "apricot", price: "3.44$", color: "2"),
        FruitModel.init(id: 2, title: .avocado, image: "avocado", price: "4.4$", color: "3"),
        FruitModel.init(id: 3, title: .banana, image: "banana", price: "1.00$", color: "4"),
        FruitModel.init(id: 4, title: .orange, image: "orange", price: "3.4$", color: "5"),
        FruitModel.init(id: 5, title: .cherry, image: "cherry", price: "3.44$", color: "6"),
        FruitModel.init(id: 6, title: .fig, image: "fig", price: "3.44$", color: "1"),
        FruitModel.init(id: 7, title: .grapes, image: "grapes", price: "2.44$", color: "2"),
        FruitModel.init(id: 8, title: .papaya, image: "papaya", price: "44$", color: "3"),

    ]
    
    var body: some View {
            HStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .center, spacing: 20) {
                        ForEach(images, id: \.id) { fruit in
                            NavigationLink(destination: DetailView(fruit: fruit.title)) {
                                FruitCardView(fruit: fruit)
                                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                            }
                        }
                    }
                    .padding(.bottom, 8)
                }
                .padding()
            }
    }
}

struct TopSellingView_Previews: PreviewProvider {
    static var previews: some View {
        TopSellingView()
    }
}
