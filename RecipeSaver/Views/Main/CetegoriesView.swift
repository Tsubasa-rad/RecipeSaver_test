//
//  CetegoriesView.swift
//  RecipeSaver
//
//  Created by 山本翼 on 2022/02/22.
//

import SwiftUI
//レシピがカテゴリ別に一覧できる
struct CetegoriesView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases) { category in
                    NavigationLink {
                        CategoryView(category: category)
                    } label: {
                        Text(category.rawValue + "s")
                    }
                }
            }
            .navigationTitle("CetegoriesView")
        }
        .navigationViewStyle(.stack) //エラーを修正する
    }
}

struct CetegoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CetegoriesView()
    }
}
