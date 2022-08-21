//
//  ThrowResultView.swift
//  Spaminataro202208
//
//  Created by Neo Taguchi on 8/21/22.
//

import SwiftUI

struct ThrowResultView: View {
    @ObservedObject var vm: ThrowResultViewModel
    @Environment(\.dismiss) private var dismiss
    let bounds = UIScreen.main.bounds
    @State var flightDistance = 0
    
    var body: some View {
        VStack {
            // FIXME: デザイン修正
            Text("結果発表!!!")
                .font(.system(size: 24))
                .padding(.bottom, 24)
            Text("飛行距離: \(flightDistance)m")
            Text("現在の歩数: \(100000)")
            Button(action: {
                dismiss()
            }) {
                Text("トップ画面の戻る")
                    .foregroundColor(.white)
            }
            .frame(width: 240, height: 40, alignment: .center)
            .background(Color.basicbuttonColor.cornerRadius(16))
        } //: VStack
        .frame(width: bounds.width - (48 * 2),
               height: 224,
               alignment: .center
        )
        .background(Color.basicboxColor.cornerRadius(8))
        .onAppear {
            let a = ((Double(vm.steps) + 1) * 0.001) * (Double(-vm.speed) * 0.001) * 1
            print("vm.steps: ",vm.steps)
            print("vm.speed: ",vm.speed)
            self.flightDistance = Int(a)
        }
    }
}
