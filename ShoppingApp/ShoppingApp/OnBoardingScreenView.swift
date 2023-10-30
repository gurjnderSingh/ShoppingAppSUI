//
//  OnBoardingScreenView.swift
//  ShoppingApp
//
//  Created by Gurjinder Singh on 30/10/23.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Order Your Favorite Fruits")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    
                    Text("Eat fresh fruits and try to be healthy")
                        .font(.system(.title3))
                        .foregroundColor(.black.opacity(0.7))
                }
                
                NavigationLink(destination: HomeScreenView()) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("6"))
                        .frame(width: 300, height: 62, alignment: .trailing)
                        .overlay {
                            HStack {
                                Text("Next")
                                    .font(.title)
                                    .fontWeight(.bold)
                                .font(.system(size: 30))
                                Image(systemName: "chevron.right")
                            }
                            .foregroundColor(.black)
                        }
                }
                Spacer()
            }
//            .navigationBarHidden(true)
        }
    }
}

struct OnBoardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingScreenView()
    }
}
