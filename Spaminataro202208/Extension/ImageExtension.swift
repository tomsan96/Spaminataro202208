//
//  ImageExtension.swift
//  Spaminataro202208
//
//  Created by Naoki Muramoto on 2022/08/20.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self.resizable().scaledToFit()
    }

    func iconModifier() -> some View {
        self.imageModifier().frame(maxWidth: 128).opacity(0.5)
    }
}
