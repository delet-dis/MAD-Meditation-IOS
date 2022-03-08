//
//  LoginView.swift
//  MAD Meditation
//
//  Created by Igor Efimov on 08.03.2022.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var viewModel: LoginViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            HStack {
                Image("AppLogo")
                    .padding(.leading, 35)
                Spacer()
            }
            
            Text(NSLocalizedString("SignIn", comment: ""))
                .font(.custom("Alegreya-Medium", size: 30))
                .foregroundColor(.white)
                .padding(.top, 31)
                .padding(.leading, 35)
            
            TextField(NSLocalizedString("Email", comment: ""), text: $viewModel.enteredEmailText)
            
            Spacer()
        }
        .navigationBarHidden(true)
        .preferredColorScheme(.dark)
        .background(Colors.mainColor)
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
