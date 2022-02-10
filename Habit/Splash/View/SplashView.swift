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
			loadingView()
		case .goToSignInScreen:
			Text("carregar tela de login")
		case .goToHomeScreen:
			Text("carregar tela principal")
		case .error(let msg):
			Text("mostrar erro:\n \(msg)")
		}
    }
}

extension SplashView {
	func loadingView() -> some View {
		ZStack {
			Image("logo")
				.resizable()
				.scaledToFit()
				.frame(maxWidth: .infinity, maxHeight: .infinity)
				.padding(20)
				.background(Color.white)
				.ignoresSafeArea()
		}
	}
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
		SplashView(state: .loading)
    }
}
