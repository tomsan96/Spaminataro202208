//
//  CultivationgViewModel.swift
//  Spaminataro202208
//
//  Created by 山崎定知 on 2022/08/21.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import HealthKit

class CultivationgViewModel: ObservableObject {
    @Published var totalSteps: Int = 0
    func getTotalSteps() {
        if HKHealthStore.isHealthDataAvailable() {
            print("使用可能")
        } else {
            print("使用できません")
        }
        let healthStore = HKHealthStore()
        let readTypes = Set([
            HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount )!
        ])

        healthStore.requestAuthorization(toShare: [], read: readTypes, completion: { success, _ in

            if success == false {
                print("データにアクセスできません")
                return
            }

            let calendar = Calendar(identifier: .gregorian)
            let currentTime = Date.currentTime
            let startOfDay = calendar.startOfDay(for: currentTime)

            let distanceType = HKObjectType.quantityType(forIdentifier: .stepCount)!
            let predicate = HKQuery.predicateForSamples(withStart: startOfDay, end: currentTime, options: [])

            let query = HKStatisticsQuery(
                quantityType: distanceType,
                quantitySamplePredicate: predicate,
                options: [.cumulativeSum]) { _, statistics, _ in
                    if let quantity = statistics?.sumQuantity() {
                        let stepValue = quantity.doubleValue(for: HKUnit.count())

                        DispatchQueue.main.async {
                            self.totalSteps = Int(stepValue)
                        }

                    } else {
                        DispatchQueue.main.async {
                            self.totalSteps = 0
                        }
                    }
                }
            healthStore.execute(query)
        })
    }
}
