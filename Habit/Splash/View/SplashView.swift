//
//  SplashView.swift
//  Habit
//
//  Created by Jean Camargo on 03/02/22.
//

import SwiftUI

struct SplashView: View {
	
	@State var state: SplashUIState = .goToHomeScreen
	
    var body: some View {
		switch state {
		case .loading:
			ZStack {
				Image("logo")
					.resizable()
					.scaledToFit()
					.frame(maxWidth: .infinity, maxHeight: .infinity)
					.padding(20)
					.background(Color.white)
					.ignoresSafeArea()
			}
		case .goToSignInScreen:
			Text("carregar tela de login")
		case .goToHomeScreen:
			Text("carregar tela principal")
		case .error(let msg):
			Text("mostrar erro:\n \(msg)")
		}
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
		SplashView(state: .loading)
    }
}
