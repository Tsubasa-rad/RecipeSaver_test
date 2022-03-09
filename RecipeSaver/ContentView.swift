//
//  ContentView.swift
//  RecipeSaver
//
//  Created by 山本翼 on 2022/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
