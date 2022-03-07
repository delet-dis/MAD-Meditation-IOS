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
                .clipped()
            
            Image("AppLogo")
                .resizable()
                .frame(width: 200, height: 210, alignment: .center)
        }
        .ignoresSafeArea()
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
