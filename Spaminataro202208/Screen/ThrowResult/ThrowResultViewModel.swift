//
//  ThrowResultViewModel.swift
//  Spaminataro202208
//
//  Created by Naoki Muramoto on 2022/08/21.
//

import SwiftUI

class ThrowResultViewModel: ObservableObject {
    @Published var speed: CGFloat = 0.0
    @Published var steps: Int = 0
}
