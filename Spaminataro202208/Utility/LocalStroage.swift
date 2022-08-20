//
//  LocalStorage.swift
//  Spaminataro202208
//
//  Created by 山崎定知 on 2022/08/21.
//

import Foundation

class LocalStorage: ObservableObject {
    // MARK: Properties
    private let uuid = "uuid"

    // MARK: Methods
    func setUuid(key: String) {
        UserDefaults.standard.set(key, forKey: uuid)
    }

    func getUuid() -> String? {
        return UserDefaults.standard.string(forKey: uuid)
    }
}
