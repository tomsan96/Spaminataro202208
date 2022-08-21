//
//  SettingView.swift
//  Spaminataro202208
//
//  Created by Naoki Muramoto on 2022/08/20.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text(TextConst.aboutApp)) {
                    NavigationLink(destination: SafariView(url: URLConst.termsOfUsePageURL, title: TextConst.termsOfUse)) {
                        Text(TextConst.termsOfUse).foregroundColor(Color.black)
                    } //: NavigationLink
                    NavigationLink(destination: SafariView(url: URLConst.privacyPoricyPageURL, title: TextConst.privacyPolicy)) {
                        Text(TextConst.privacyPolicy).foregroundColor(Color.black)
                    } //: NavigationLink
                    Button(action: {
                        // swiftlint:disable force_unwrapping
                        UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
                        // swiftlint:enable force_unwrapping
                    }, label: {
                        Text(TextConst.license).foregroundColor(Color.black)
                    }) //: Button
                } //: Section
            } //: List
            .listStyle(GroupedListStyle())
            .navigationBarTitle(TextConst.setting)
            .background(Color.backgroundColor)
        } //: NavigationView
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
