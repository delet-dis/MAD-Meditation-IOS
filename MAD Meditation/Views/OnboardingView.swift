//
//  OnboardingView.swift
//  MAD Meditation
//
//  Created by Igor Efimov on 06.03.2022.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .center) {
                Image("BackgroundImage")
                    .resizable()
                    .clipped()
                
                VStack(alignment: .center) {
                    Image("AppLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200, alignment: .center)
                        
                    Text(NSLocalizedString("Hello", comment: "").uppercased())
                        .foregroundColor(.white)
                        .font(.custom("Alegreya-Bold", size: 34))
                    
                    Text(NSLocalizedString("HelloSubText", comment: ""))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .font(.custom("AlegreyaSans-Medium", size: 20))
                    
                    Button {}
                    label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 300, height: 60, alignment: .center)
                                .foregroundColor(Colors.secondaryColor)
                            
                            Text(NSLocalizedString("Login", comment: ""))
                                .foregroundColor(.white)
                                .font(.custom("AlegreyaSans-Medium", size: 25))
                        }
                    }
                    .padding(.top, 70)
                    
                        HStack(spacing: 8) {
                            Text(NSLocalizedString("StillNoAccount", comment: ""))
                                .foregroundColor(.white)
                                .font(.custom("AlegreyaSans-Regular", size: 20))
                            
                            NavigationLink(destination: RegisterView()){
                                Text(NSLocalizedString("Register", comment: ""))
                                    .foregroundColor(.white)
                                    .font(.custom("AlegreyaSans-Bold", size: 22))
                            }
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
