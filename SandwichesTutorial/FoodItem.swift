//
//  FoodItem.swift
//  SandwichesTutorial
//
//  Created by Barış Can Sertkaya on 19.03.2023.
//

import Foundation

struct FoodItem: Identifiable {
    var id = UUID()
    var name: String
    var price: Int
    var isSpicy: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb"}
}

let testData = [
    FoodItem(name: "Adana Kebap", price: 100, isSpicy: true),
    FoodItem(name: "Kuzu Şiş", price: 120, isSpicy: false),
    FoodItem(name: "Tavuk Şiş", price: 80, isSpicy: true),
    FoodItem(name: "Karışık Izgara", price: 150, isSpicy: false),
    FoodItem(name: "Pide", price: 100, isSpicy: false)
]
