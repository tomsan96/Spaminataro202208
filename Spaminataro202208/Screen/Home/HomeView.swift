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
    @State private var isFirst: Bool
    @State private var user: User?
    @State private var seed: Seed?

    // MARK: - Initializer
    init(isFirst: Bool) {
        _isFirst = State(initialValue: isFirst)
    }

    // MARK: - body
    var body: some View {
        NavigationView {
            VStack {
                if isFirst {
                    // FIXME: 初期表示(種の選択)画面実装した際は別画面表示にする
                    CultivatingView()
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
        HomeView(isFirst: false)
    }
}
