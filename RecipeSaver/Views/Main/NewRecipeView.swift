//
//  NewRecipeView.swift
//  RecipeSaver
//
//  Created by 山本翼 on 2022/02/22.
//

import SwiftUI
//ユーザーが新しいレシピを追加できるページ
struct NewRecipeView: View {
    
    @State private var showAddRecipe = false
    
    var body: some View {
        NavigationView {
            Button("Add recipe manually") {
                showAddRecipe = true
            }
                .navigationTitle("NewRecipe")
        }
        .navigationViewStyle(.stack) //エラーを修正する
        .sheet(isPresented: $showAddRecipe) {
            AddRecipeView()
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
