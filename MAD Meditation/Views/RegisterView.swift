//
//  RegisterView.swift
//  MAD Meditation
//
//  Created by Igor Efimov on 07.03.2022.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            HStack(alignment: .center) {
                Spacer()
                Text(NSLocalizedString("RegistrationWillBeHere", comment: ""))
                    .font(.custom("Alegreya-Medium", size: 30))
                    .foregroundColor(.white)
                Spacer()
            }
            Spacer()
        }
        .background(Colors.mainColor)
        .ignoresSafeArea()
        .navigationBarHidden(true)
        .preferredColorScheme(.dark)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
