//
//  HomeViewModel.swift
//  Spaminataro202208
//
//  Created by Naoki Muramoto on 2022/08/20.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class HomeViewModel: ObservableObject {
    // MARK: - Properties
    let database = Firestore.firestore()

    // MARK: - Methods
    func setNavigationTitle() -> String {
        let timePeriod = Calendar(identifier: .gregorian).getTimePeriod()
        switch timePeriod {
        case .morning:
            return TextConst.goodMorning
        case .daytime:
            return TextConst.hello
        case .night:
            return TextConst.goodEvening
        }
    }
}
