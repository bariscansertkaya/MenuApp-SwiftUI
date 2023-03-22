//
//  ContentView.swift
//  SandwichesTutorial
//
//  Created by Barış Can Sertkaya on 19.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    var foodItems: [FoodItem] = testData
    
    var body: some View {
        
        NavigationView {
            
            List {
                ForEach(foodItems) { foodItem in
                    MenuCell(foodItem: foodItem)
                }
                HStack {
                    Spacer()
                    Text("Afiyet Olsun.")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .navigationTitle("Menü")
        }
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(foodItems: testData)
    }
}

struct MenuCell: View {
    
    var foodItem : FoodItem
    
    var body: some View {
        NavigationLink(destination: MenuDetail(foodItem: foodItem)) {
            HStack {
                Image(foodItem.thumbnailName)
                    .resizable()
                    .frame(width: 50.0 , height: 40.0)
                    .cornerRadius(10)
                VStack(alignment: .leading) {
                    Text(foodItem.name)
                    Text("\(foodItem.price) ₺")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
    }
}
