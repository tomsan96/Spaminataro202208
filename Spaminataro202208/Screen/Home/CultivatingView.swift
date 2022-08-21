//
//  CultivatingView.swift
//  Spaminataro202208
//
//  Created by 山崎定知 on 2022/08/21.
//

import SwiftUI

struct CultivatingView: View {
    // MARK: - Property Wrappers
    @ObservedObject private var viewModel = CultivationgViewModel()
    // MARK: - Proverties
    let bounds = UIScreen.main.bounds

    // MARK: - body
    var body: some View {
        VStack {
            // FIXME: デザイン修正
            Text("スイカの種")
            Text("理想の歩数: 8000")
            Text("現在の歩数: \(viewModel.totalSteps)")
            Button(action: {

            }) {
                Text("収穫する")
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
        .task {
            viewModel.getTotalSteps()
        }
    }
}

struct CultivatingView_Previews: PreviewProvider {
    static var previews: some View {
        CultivatingView()
    }
}
