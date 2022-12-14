//
//  UIColorExtension.swift
//  Spaminataro202208
//
//  Created by Naoki Muramoto on 2022/08/20.
//

import SwiftUI

extension UIColor {
    class var mainColor: UIColor {
        UIColor(named: "main") ?? UIColor.clear
    }

    class var backgroundColor: UIColor {
        UIColor(named: "background") ?? UIColor.clear
    }

    class var basicboxColor: UIColor {
        UIColor(named: "basicbox") ?? UIColor.clear
    }

    class var basicbuttonColor: UIColor {
        UIColor(named: "basicbutton") ?? UIColor.clear
    }
}
