//
//  Spaminataro202208App.swift
//  Spaminataro202208
//
//  Created by 山崎定知 on 2022/08/18.
//

import SwiftUI
import FirebaseCore

@main
struct Spaminataro202208App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
