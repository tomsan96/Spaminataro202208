//
//  Const.swift
//  Spaminataro202208
//
//  Created by Naoki Muramoto on 2022/08/20.
//

import Foundation

enum URLConst {}

enum AppStorageConst {
    static let isLoading = "isLoading"
    static let isOnboarding = "isOnboarding"
}

enum TextConst {
    static let goodMorning = "おはようございます"
    static let hello = "こんにちは"
    static let goodEvening = "こんばんは"
}

enum ImageConst {
    static let logo = "logo"

    enum Tab {
        static let seed = "seed"
        static let ranking = "ranking"
        static let setting = "setting"
    }
}
