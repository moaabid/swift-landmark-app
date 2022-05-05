//
//  LandmarkApp.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Mohammed aabid on 05/05/22.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
