//
//  ThrowResultView.swift
//  Spaminataro202208
//
//  Created by Neo Taguchi on 8/21/22.
//

import SwiftUI

struct ThrowResultView: View {
    @ObservedObject var vm: ThrowResultViewModel
    
    var body: some View {
        ZStack {
            VStack {
                Text("結果発表!!!")
                    .font(.system(size: 24))
                    .padding(.bottom, 24)
                Text("飛行距離: \(Int(-vm.speed) * 100)m")
                    .font(.system(size: 20))
                    .padding(.bottom, 10)
                Text("現在の歩数: \(100000)")
                    .font(.system(size: 20))
                    .padding(.bottom, 10)
                Button {
                    print("asdfasdfas")
                } label: {
                    Text("トップ画面の戻る")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                        .background(Color("sub"))
                        .padding(.horizontal)
                }
                .padding()
            }
        }
        .padding()
        .background(Color.basicboxColor)
    }
}
