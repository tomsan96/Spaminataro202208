//
//  Const.swift
//  Spaminataro202208
//
//  Created by Naoki Muramoto on 2022/08/20.
//

import Foundation

enum URLConst {
    static let sampleURL = "https://www.apple.com/jp/"
    static let termsOfUsePageURL = sampleURL
    static let privacyPoricyPageURL = sampleURL
}

enum AppStorageConst {
    static let isLoading = "isLoading"
    static let isOnboarding = "isOnboarding"
}

enum TextConst {
    static let goodMorning = "おはようございます"
    static let hello = "こんにちは"
    static let goodEvening = "こんばんは"
    static let setting = "設定"
    static let aboutApp = "アプリについて"
    static let termsOfUse = "利用規約"
    static let privacyPolicy = "プライバシーポリシー"
    static let license = "ライセンス"
}

enum ImageConst {
    static let logo = "logo"
    static let seed = "throw_seed"

    enum ThrowSeed {
        static let background = "animation_background"
    }

    enum AnimationSeed {
        static let background = "throw_background"
    }

    enum Tab {
        static let seed = "seed"
        static let ranking = "ranking"
        static let setting = "setting"
    }
}
