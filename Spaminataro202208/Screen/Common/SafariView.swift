//
//  SafariView.swift
//  Spaminataro202208
//
//  Created by Naoki Muramoto on 2022/08/21.
//

import SwiftUI

struct SafariView: View {
    // MARK: - Properties
    let url: String
    let title: String

    // MARK: - body
    var body: some View {
        // swiftlint:disable force_unwrapping
        WebView(url: URL(string: url)!).navigationBarTitle(title, displayMode: .inline)
        // swiftlint:enable force_unwrapping
    }
}
