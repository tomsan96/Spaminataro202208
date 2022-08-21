//
//  WebView.swift
//  Spaminataro202208
//
//  Created by Naoki Muramoto on 2022/08/21.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    // MARK: - Properties
    let url: URL

    // MARK: - Methods
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
