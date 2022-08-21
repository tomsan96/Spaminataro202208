//
//  ThrowSeedView.swift
//  Spaminataro202208
//
//  Created by Neo Taguchi on 8/21/22.
//

import SwiftUI

struct ThrowSeedView: View {
    @State var position = CGSize(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height - 100)
    @State var seedPosition = CGSize(width: 0, height: UIScreen.main.bounds.height / 2)
    @State var index = 0
    @State var index2 = Double(UIScreen.main.bounds.height / 2)
    @State var flag = true
    
    @State var offset = CGSize.zero
    @State var lastDragPosition: DragGesture.Value?
    @State var backgroundImage = "throw_background"
    @State var vm = ThrowResultViewModel()
    let steps: Int

    private let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
    
    var drag: some Gesture {
        DragGesture()
            .onChanged{ value in
                withAnimation(.spring()) {
                    self.position = CGSize(
                        width: value.startLocation.x + value.translation.width,
                        height: value.startLocation.y + value.translation.height
                    )
                }
                self.lastDragPosition = value
            }
            .onEnded{ value in
                withAnimation(.spring()) {
                    self.position = CGSize(
                        width: value.startLocation.x + value.translation.width,
                        height: value.startLocation.y + value.translation.height
                    )
                }
                let timeDiff = value.time.timeIntervalSince(self.lastDragPosition!.time)
                let speed = CGFloat(value.translation.height - self.lastDragPosition!.translation.height) / CGFloat(timeDiff)
                print(speed)
                vm.speed = speed
                vm.steps = steps
            }
    }
    
    var body: some View {
        if flag {
            VStack {
                if position.height < 0 {
                    Image("throw_seed")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding()
                        .position(x: seedPosition.width, y: seedPosition.height)
                        .onReceive(timer) { _ in
                            backgroundImage = "animation_background"
                            if seedPosition.width > (UIScreen.main.bounds.width / 2) {
                                index2 += 2
                            } else {
                                index2 -= 2
                            }
                            index += 1
                            seedPosition.width = CGFloat(index)
                            seedPosition.height = CGFloat(index2)
                            if index > Int(UIScreen.main.bounds.width) {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    flag = false
                                }
                            }
                        }
                } else {
                    Image("throw_seed")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .position(x: position.width, y: position.height)
                        .gesture(drag)
                }
            }
            .background(
                Image(backgroundImage)
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
            )
        } else {
            ThrowResultView(vm: vm)
        }
    }
}
