//
//  Recipemodel.swift
//  RecipeSaver
//
//  Created by 山本翼 on 2022/02/22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let decription: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePulished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(name: "Creamy carrot Soup", image: "https://cdn.pixabay.com/photo/2019/09/28/05/10/sunset-4509879_1280.jpg", decription: "This is a good", ingredients: "llllllll", directions: "jdhdhsk", category: "Soup", datePulished: "2019-11-11", url: "https://info.co"),
        Recipe(name: "Creamy carrot Soup", image: "https://cdn.pixabay.com/photo/2019/09/28/05/10/sunset-4509879_1280.jpg", decription: "This is a good", ingredients: "llllllll", directions: "jdhdhsk", category: "breakfast", datePulished: "2019-11-11", url: "https://info.co"),
        Recipe(name: "Creamy carrot Soup", image: "https://cdn.pixabay.com/photo/2019/09/28/05/10/sunset-4509879_1280.jpg", decription: "This is a good", ingredients: "llllllll", directions: "jdhdhsk", category: "Drink", datePulished: "2019-11-11", url: "https://info.co"),
        Recipe(name: "Creamy carrot Soup", image: "https://cdn.pixabay.com/photo/2019/09/28/05/10/sunset-4509879_1280.jpg", decription: "This is a good", ingredients: "llllllll", directions: "jdhdhsk", category: "Snack", datePulished: "2019-11-11", url: "https://info.co"),
        Recipe(name: "Creamy carrot Soup", image: "https://cdn.pixabay.com/photo/2019/09/28/05/10/sunset-4509879_1280.jpg", decription: "This is a good", ingredients: "llllllll", directions: "jdhdhsk", category: "Appetizer", datePulished: "2019-11-11", url: "https://info.co"),
        
    ]
}
