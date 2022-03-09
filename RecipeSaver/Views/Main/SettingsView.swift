//
//  SettingsView.swift
//  RecipeSaver
//
//  Created by 山本翼 on 2022/02/22.
//

import SwiftUI
//ユーザー設定を保存できる
struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("v1.0.0")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack) //エラーを修正する
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
