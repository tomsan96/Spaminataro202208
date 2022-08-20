//
//  RankingView.swift
//  Spaminataro202208
//
//  Created by Naoki Muramoto on 2022/08/20.
//

import SwiftUI

struct RankingView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("RankingView")
            } //: VStack
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.backgroundColor)
        } //: NavigationView
    }
}

struct RankingView_Previews: PreviewProvider {
    static var previews: some View {
        RankingView()
    }
}
