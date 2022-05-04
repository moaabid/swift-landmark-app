//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Mohammed aabid on 04/05/22.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
           ContentView()
                .environmentObject(modelData)
        }
    }
}
