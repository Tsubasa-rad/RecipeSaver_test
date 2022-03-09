//
//  RecipeSaverApp.swift
//  RecipeSaver
//
//  Created by 山本翼 on 2022/02/22.
//

import SwiftUI

@main
struct RecipeSaverApp: App {
    
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
