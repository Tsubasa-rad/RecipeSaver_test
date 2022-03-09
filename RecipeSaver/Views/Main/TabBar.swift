//
//  TabVView.swift
//  RecipeSaver
//
//  Created by 山本翼 on 2022/02/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        //カスタムなしの単純な形式のTabViewです
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            CetegoriesView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            NewRecipeView()
                .tabItem {
                    Label("New", systemImage: "plus")
                }
            FavoriteView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct TabVView_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipesViewModel())
    }
}
