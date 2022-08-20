//
//  CalendarExtension.swift
//  Spaminataro202208
//
//  Created by Naoki Muramoto on 2022/08/20.
//

import Foundation

extension Calendar {
    func getTimePeriod() -> TimePeriod {
        let currentHour = Calendar.current.component(.hour, from: Date.currentTime)
        switch currentHour {
        case 4..<11:
            return .morning
        case 11..<17:
            return .daytime
        default:
            return .night
        }
    }
}
