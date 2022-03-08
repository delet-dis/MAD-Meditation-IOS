//
//  LoginViewModel.swift
//  MAD Meditation
//
//  Created by Igor Efimov on 08.03.2022.
//

import Foundation

final class LoginViewModel: ObservableObject{
    @Published var enteredEmailText = ""
    @Published var enteredPasswordText = ""
}
