//
//  MAD_MeditationApp.swift
//  MAD Meditation
//
//  Created by Igor Efimov on 06.03.2022.
//

import SwiftUI

@main
struct MAD_MeditationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ContentViewModel())
        }
    }
}
