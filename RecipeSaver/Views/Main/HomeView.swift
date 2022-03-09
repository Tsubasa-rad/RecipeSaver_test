//
//  HomeView.swift
//  RecipeSaver
//
//  Created by 山本翼 on 2022/02/22.
//

import SwiftUI

//全てのレシピを一覧できる
struct HomeView: View {
    
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipesVM.recipes)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack) //エラーを修正する
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}
