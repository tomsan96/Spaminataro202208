//
//  Seed.swift
//  Spaminataro202208
//
//  Created by 山崎定知 on 2022/08/21.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct Seed: Codable, Identifiable {
    @DocumentID var id: String?
    let fromDate: Date
    let type: String
    let currentSteps: Int
    let targetSteps: Int
    let imageUrls: [String]
}
