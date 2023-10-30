//
//  NearYouView.swift
//  ShoppingApp
//
//  Created by Gurjinder Singh on 30/10/23.
//

import SwiftUI

struct NearYouView: View {
    
    let dataArray: [PlacesModel] = [
        PlacesModel(id: 1, name: "Food 365 Valley", time: "9AM - 10PM", rating: "* 3.2 | 2.7 km", image: "1"),
        PlacesModel.init(id: 2, name: "Super Store", time: "4AM - 04PM", rating: "* 5.0 | 2.7 km", image: "2"),
        PlacesModel.init(id: 3, name: "Big Basket", time: "2AM - 05PM", rating: "* 4.2 | 2.7 km", image: "3"),
        PlacesModel.init(id: 4, name: "Organic Farm", time: "5AM - 02PM", rating: "* 3.0 | 2.7 km", image: "4"),
        PlacesModel.init(id: 5, name: "Easy Mart", time: "1AM - 10PM", rating: "* 4.0 | 2.7 km", image: "5"),
        PlacesModel.init(id: 6, name: "Let's Shop", time: "6AM - 10PM", rating: "* 5.0 | 2.7 km", image: "6"),
        PlacesModel(id: 7, name: "Food 365 Valley", time: "9AM - 10PM", rating: "* 3.2 | 2.7 km", image: "1"),
        PlacesModel.init(id: 8, name: "Super Store", time: "4AM - 04PM", rating: "* 5.0 | 2.7 km", image: "2"),
        PlacesModel.init(id: 9, name: "Big Basket", time: "2AM - 05PM", rating: "* 4.2 | 2.7 km", image: "3"),
    ]
    
    var body: some View {
        ScrollView(Axis.Set.vertical, showsIndicators: false) {
            ForEach(dataArray, id: \.id) { fruit in
                HStack {
                    RoundedRectangle(cornerRadius: 12)
                        .foregroundColor(.gray.opacity(0.2))
                        .frame(width: 100, height: 100)
                        .overlay {
                            Image(fruit.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    VStack(alignment: .leading) {
                        Text(fruit.name)
                            .font(.system(.headline))
                        Text(fruit.time)
                            .font(.system(.subheadline))
                            .foregroundColor(.gray)
                        Text(fruit.rating)
                    }
                }
            }
        }
    }
}

struct NearYouView_Previews: PreviewProvider {
    static var previews: some View {
        NearYouView()
    }
}
