//
//  ContentView.swift
//  MAD Meditation
//
//  Created by Igor Efimov on 06.03.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isSplashScreenActive = true

    var body: some View {
        HStack {
            if isSplashScreenActive {
                SplashScreenView()
            } else {
                OnboardingView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                withAnimation(.easeInOut(duration: 0.5)){
                    isSplashScreenActive.toggle()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
