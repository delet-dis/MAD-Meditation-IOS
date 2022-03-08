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
                .overlay {
                    VStack {
                        Divider()
                            .offset(x: 0, y: 20)
                    }
                }
                .foregroundColor(.white)
                .padding(.leading, 35)
                .padding(.trailing, 35)
            
            SecureField(NSLocalizedString("Password", comment: ""), text: $viewModel.enteredPasswordText)
                .overlay {
                    VStack {
                        Divider()
                            .offset(x: 0, y: 20)
                    }
                }
                .foregroundColor(.white)
                .padding(.leading, 35)
                .padding(.trailing, 35)
                .padding(.top, 35)
            
            HStack(alignment: .center) {
                Spacer()
                Button {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(minWidth: 0, idealWidth: 100, maxWidth: 600, minHeight: 60, idealHeight: 60, maxHeight: 60, alignment: .center)
                            .foregroundColor(Colors.secondaryColor)
                            .padding(.leading, 25)
                            .padding(.trailing, 25)
                            
                        
                        Text(NSLocalizedString("SignIn", comment: ""))
                            .foregroundColor(.white)
                            .font(.custom("AlegreyaSans-Medium", size: 25))
                    }
                }
                .padding(.top, 55)
                Spacer()
            }
            .ignoresSafeArea()
            
            NavigationLink(destination: RegisterView()) {
                Text(NSLocalizedString("Register", comment: ""))
                    .foregroundColor(.white)
                    .font(.custom("AlegreyaSans-Regular", size: 20))
            }
            .padding(.top, 23)
            .padding(.leading, 35)
            
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
            .environmentObject(LoginViewModel())
    }
}
