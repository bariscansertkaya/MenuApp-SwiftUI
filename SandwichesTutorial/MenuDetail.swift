//
//  MenuDetail.swift
//  SandwichesTutorial
//
//  Created by Barış Can Sertkaya on 19.03.2023.
//

import SwiftUI

struct MenuDetail: View {
    var foodItem : FoodItem
    @State private var isZoomed = false
    
    var body: some View {
        VStack {
            
            Spacer(minLength: 0)
            Image(foodItem.thumbnailName)
                .resizable()
                .aspectRatio(contentMode: isZoomed ? .fill : .fit)
                .onTapGesture{
                    withAnimation {
                        isZoomed.toggle()
                    }
                }
            
            if !isZoomed {
                VStack {
                    Text("Enfes bir \(foodItem.name)!")
                        .padding()
                        .font(.title2)
                    Text("\(foodItem.price) ₺")
                        .font(.title2)
                        .foregroundColor(.secondary)
                }
                
                    
            }
            
            Spacer(minLength: 0)
            
            if foodItem.isSpicy && !isZoomed {
                HStack
                {
                    Spacer()
                    Label("Acılı", systemImage: "flame.fill")
                    Spacer()
                }
                .padding()
                .font(.title2.smallCaps())
                .background(.red)
                .foregroundColor(.yellow)
                .transition(.move(edge: .bottom))
                
            }
                
        }
        .edgesIgnoringSafeArea(.bottom)
        .navigationTitle(foodItem.name)
                    
            
    }
}

struct MenuDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MenuDetail(foodItem: testData[0])
        }
        
    }
}
