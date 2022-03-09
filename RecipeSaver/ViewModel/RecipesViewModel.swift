//
//  RecipesViewModel.swift
//  RecipeSaver
//
//  Created by 山本翼 on 2022/03/09.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
