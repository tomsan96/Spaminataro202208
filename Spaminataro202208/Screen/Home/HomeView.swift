//
//  HomeView.swift
//  Spaminataro202208
//
//  Created by Naoki Muramoto on 2022/08/20.
//

import SwiftUI

struct HomeView: View {
    // MARK: - Property Wrappers
    @ObservedObject private var viewModel = HomeViewModel()
    // FIXME: 初期表示画面実装した際はtrueにする
    @State private var isFirst = false
    @State private var user: User?
    @State private var seed: Seed?

    // MARK: - body
    var body: some View {
        NavigationView {
            VStack {
                if isFirst {
                    Text("FirstHomeView")
                } else {
                    CultivatingView()
                }
            } //: VStack
            .navigationTitle(viewModel.setNavigationTitle())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.backgroundColor)
        } //: NavigationView
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
