//
//  SplashView.swift
//  Spaminataro202208
//
//  Created by Naoki Muramoto on 2022/08/20.
//

import SwiftUI

struct SplashView: View {
    // MARK: - Property Wrappers
    // FIXME: Loginの処理が追加したら初期値をfalseに
    @AppStorage(AppStorageConst.isOnboarding) private var isLogin = true
    @State private var isLoading = true
    @State private var isFirst = true
    @ObservedObject private var viewModel = SplashViewModel()

    // MARK: - Properties
    private let logoSize = UIScreen.main.bounds.width * 0.9

    // MARK: - body
    var body: some View {
        ZStack {
            Color.backgroundColor.ignoresSafeArea()
            if isLoading {
                Image(ImageConst.logo)
                    .imageModifier()
                    .frame(width: logoSize, height: logoSize)
                    .task {
                        guard let checkUserExist = await viewModel.checkUserExist() else { return }
                        if checkUserExist {
                            isFirst = false
                        } else {
                            await viewModel.addUser()
                            isFirst = true
                        }
                        // TODO: ログインしているか判定する
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            isLoading = false
                        }
                    }
            } else {
                if isLogin {
                    TabControlView(isFirst: isFirst)
                } else {
                    LoginView()
                }
            }
        } //: ZStack
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
