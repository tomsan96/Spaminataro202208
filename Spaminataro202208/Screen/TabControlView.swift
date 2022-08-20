//
//  TabControlView.swift
//  Spaminataro202208
//
//  Created by Naoki Muramoto on 2022/08/20.
//

import SwiftUI

struct TabControlView: View {
    // MARK: - Property Wrappers
    @State private var index = 0

    // MARK: - Body
    var body: some View {
        TabView(selection: $index) {
            HomeView().tabItem {
                Image(ImageConst.Tab.seed)
            }.tag(0)
            RankingView().tabItem {
                Image(ImageConst.Tab.ranking)
            }.tag(1)
            SettingView().tabItem {
                Image(ImageConst.Tab.setting)
            }.tag(2)
        } //: TabView
        .accentColor(.mainColor)
        .onAppear {
            if #available(iOS 15.0, *) {
                let appearance = UITabBarAppearance()
                UITabBar.appearance().scrollEdgeAppearance = appearance
            }
        }
    }
}
