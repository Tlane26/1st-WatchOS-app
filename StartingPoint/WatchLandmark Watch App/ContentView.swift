//
//  ContentView.swift
//  WatchLandmark Watch App
//
//  Created by Tlanetzi Chavez Madero on 19/12/23.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .task {
                let center = UNUserNotificationCenter.current()
                _ = try? await center.requestAuthorization(
                    options: [.alert, .sound, .badge]
                )
            }

    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
