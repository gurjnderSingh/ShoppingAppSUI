//
//  DetailView.swift
//  ShoppingApp
//
//  Created by Gurjinder Singh on 30/10/23.
//

import SwiftUI

struct RoundedCornerShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct Counter: View {
    @State private var count = 0
    var body: some View {
        HStack(spacing: 5) {
            Spacer()
            Button {
                count += 1
            } label: {
                Image(systemName: "plus")
            }
            Spacer()
            Text("\(count)")
                .font(.title)
            Spacer()
            Button {
                if count != 0 {
                    count -= 1
                }
            } label: {
                Image(systemName: "minus")
            }
            Spacer()
        }
        .foregroundColor(.black)
        .frame(width: 150, height: 50)
        .background(Color("bgColor").opacity(0.15))
        .cornerRadius(12)
    }
}


struct DetailView: View {
    @State var fruit: frutiTitle
    var body: some View {
//        ScrollView {
            VStack(alignment: .leading, spacing: 25) {
                Image("bg")
                    .resizable()
                    .clipShape(RoundedCornerShape(corners: [.bottomLeft, .bottomRight], radius: 50))
                    .frame(width: .infinity, height: 300, alignment: .top)
                    .edgesIgnoringSafeArea(.all)
                    .shadow(color: .gray, radius: 5,x: 5,y: 5)
                    .overlay {
                        Image("\(fruit.rawValue)")
                            .resizable()
                            .frame(width: 250, height: 250, alignment: .center)
                            .shadow(color: .gray, radius: 5,x: 5,y: 5)
                    }
                Spacer()
                Text("\(fruit.rawValue) - Medium")
                    .fontWeight(.medium)
                    .font(.system(.title))
                    .padding(.horizontal)
                    .textCase(.uppercase)
                
                Text("Each (500g-700g)")
                    .padding(.horizontal)
                
                Text("Organic Architecture refers to a category of architecture that is in close association with nature (Harmony between nature and built habitat). Organic architecture is achieved by integrating the structure into the site and natural fabric to create a single entity.")
                    .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .lineLimit(6)
                    .padding(.horizontal)
                
                HStack(spacing: 10) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("bgColor"))
                        .opacity(0.15)
                        .overlay {
                            Image(systemName: "hourglass")
                                .font(.system(size: 40))
                        }
                        .frame(width: 50, height: 50)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Delivery Time")
                        Text("25-30 min")
                    }
                }
                .padding(.horizontal)
                
                HStack(spacing: 10) {
                    Text("$199")
                        .fontWeight(.medium)
                        .font(.title)
                    Spacer()
                    Counter()
                }
                .padding(.horizontal)
                
                Image("bg")
                    .resizable()
                    .frame(width: 350, height: 50, alignment: .center)
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                    .overlay {
                        Text("Add To Cart")
                            .font(.system(.title3))
                            .fontWeight(.medium)
                    }
                    .padding(.horizontal)
            }
//        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(fruit: frutiTitle.orange)
    }
}
