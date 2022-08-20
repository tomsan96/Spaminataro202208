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

    // MARK: - body
    var body: some View {
        NavigationView {
            VStack {
                Text("HomeView")
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
