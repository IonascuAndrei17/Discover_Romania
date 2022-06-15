//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Andy Ionascu on 30.01.2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
