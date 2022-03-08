//
//  ContentView.swift
//  MAD Meditation
//
//  Created by Igor Efimov on 06.03.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel:ContentViewModel

    var body: some View {
        NavigationView{
            HStack {
                if viewModel.isSplashScreenActive {
                    SplashScreenView()
                } else {
                    OnboardingView()
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    withAnimation(.easeInOut(duration: 0.5)){
                        viewModel.isSplashScreenActive = false
                    }
                }
            }
        }
        .environmentObject(viewModel.loginViewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
