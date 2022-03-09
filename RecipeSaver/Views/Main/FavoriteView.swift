//
//  FavoriteView.swift
//  RecipeSaver
//
//  Created by 山本翼 on 2022/02/22.
//

import SwiftUI
//お気に入りのレシピを一覧できる
struct FavoriteView: View {
    var body: some View {
        NavigationView {
            Text("Favorite")
                .navigationTitle("Favorite")
        }
        .navigationViewStyle(.stack) //エラーを修正する
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
