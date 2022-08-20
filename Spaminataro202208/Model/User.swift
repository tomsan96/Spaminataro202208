//
//  User.swift
//  Spaminataro202208
//
//  Created by 山崎定知 on 2022/08/21.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct User: Codable {
    @DocumentID var id: String?
}
