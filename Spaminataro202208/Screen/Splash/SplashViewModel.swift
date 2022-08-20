//
//  SplashViewModel.swift
//  Spaminataro202208
//
//  Created by 山崎定知 on 2022/08/21.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class SplashViewModel: ObservableObject {
    // MARK: - Properties
    let database = Firestore.firestore()

    func checkUserExist() async -> Bool? {
        guard let uuid = LocalStorage().getUuid() else { return false }
        let usersReference = database.collection("users")
        do {
            let userDocument = try await usersReference.document(uuid).getDocument()
            return userDocument.exists
        } catch {
            print("error: \(error.localizedDescription)")
        }
        return nil
    }

    func addUser() async {
        let uuid = UUID().uuidString
        LocalStorage().setUuid(key: uuid)
        let usersReference = database.collection("users")
        do {
            try usersReference.document(uuid).setData(from: User())
        } catch {
            print("error: \(error.localizedDescription)")
        }
    }
}
