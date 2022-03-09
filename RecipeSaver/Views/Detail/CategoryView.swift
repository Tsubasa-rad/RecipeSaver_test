//
//  CategoryView.swift
//  RecipeSaver
//
//  Created by 山本翼 on 2022/03/08.
//

import SwiftUI

struct CategoryView: View {
    
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    var category: Category
    
    //Computed property
    var recipes: [Recipe] {
        return recipesVM.recipes.filter{ $0.category == category.rawValue }
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.dessert)
            .environmentObject(RecipesViewModel())
    }
}
