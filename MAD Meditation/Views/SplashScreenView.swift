//
//  SplashScreenView.swift
//  MAD Meditation
//
//  Created by Igor Efimov on 06.03.2022.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            Image("BackgroundImage")
                .resizable()
                .scaledToFill()
            
            Image("AppLogo")
                .resizable()
                .frame(width: 420, height: 500, alignment: .center)
        }
        .ignoresSafeArea()
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
