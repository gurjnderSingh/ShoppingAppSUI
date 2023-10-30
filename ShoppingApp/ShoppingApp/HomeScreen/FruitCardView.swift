//
//  FruitCardView.swift
//  ShoppingApp
//
//  Created by Gurjinder Singh on 30/10/23.
//

import SwiftUI

let fruitModel: FruitModel = FruitModel(id: 1, title: .apple, image: "banana", price: "3.44$", color: "1")

struct FruitCardView: View {
    
    let fruit: FruitModel
    var body: some View {
        ZStack {
            VStack(spacing: 5) {
                Text(fruit.title.rawValue)
                    .fontWeight(.bold)
                    .font(.system(.title3))
                    .foregroundColor(.black)
                
                Text(fruit.price)
                    .font(.system(.title3))
                    .foregroundColor(.black.opacity(0.6))
                
                Spacer()
            }
            .padding()
            .frame(width: 175, height: 150, alignment: .center)
            .background(Color(fruit.color))
            .cornerRadius(10)
            
            Image(fruit.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 110, alignment: .center)
                .offset(y: 60)
        }
        .frame(width: 175, height: 220, alignment: .center)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitModel)
    }
}
