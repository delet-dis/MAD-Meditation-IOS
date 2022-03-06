//
//  OnboardingView.swift
//  MAD Meditation
//
//  Created by Igor Efimov on 06.03.2022.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        ZStack {
            Image("BackgroundImage")
                .resizable()
                .scaledToFill()
            
            VStack {
                Image("AppLogo")
                    .resizable()
                    .frame(width: 420, height: 500, alignment: .center)
                
                Text(NSLocalizedString("Hello", comment: "").uppercased())
                    .foregroundColor(.white)
                    .font(Font.custom("Alegreya-Bold", size: 34))
                    .padding(.top, -90)
                
                Text(NSLocalizedString("HelloSubText", comment: ""))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.top, -70)
                    .font(Font.custom("AlegreyaSans-Medium", size: 20))
                
                Button {}
                label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 300, height: 60, alignment: .center)
                            .foregroundColor(Colors.secondaryColor)
                        
                        Text(NSLocalizedString("Login", comment: ""))
                            .foregroundColor(.white)
                    }
                }
                .padding(.top, 70)
                
                HStack{
                    Text(NSLocalizedString("StillNoAccount", comment: ""))
                    
                    Text(NSLocalizedString("Register", comment: ""))
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
