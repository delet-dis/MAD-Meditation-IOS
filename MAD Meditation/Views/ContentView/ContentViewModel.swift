//
//  ContentViewModel.swift
//  MAD Meditation
//
//  Created by Igor Efimov on 08.03.2022.
//

import Foundation

final class ContentViewModel: ObservableObject{
    @Published var loginViewModel = LoginViewModel()
    
    @Published var isSplashScreenActive = true
}
