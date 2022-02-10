//
//  SplashView.swift
//  Habit
//
//  Created by Jean Camargo on 03/02/22.
//

import SwiftUI

struct SplashView: View {
	
	@State var state: SplashUIState = .goToHomeScreen
	@State var showAlert = false
	
    var body: some View {
		switch state {
		case .loading:
			loadingView()
		case .goToSignInScreen:
			Text("carregar tela de login")
		case .goToHomeScreen:
			Text("carregar tela principal")
		case .error(let msg):
			loadingView(error: msg)
		}
    }
}

extension SplashView {
	func loadingView(error: String? = nil) -> some View {
		ZStack {
			Image("logo")
				.resizable()
				.scaledToFit()
				.frame(maxWidth: .infinity, maxHeight: .infinity)
				.padding(20)
				.background(Color.white)
				.ignoresSafeArea()
			
			if let error = error {
				Text("")
					.alert(isPresented: .constant(true)) {
						Alert(title: Text("Habit"), message: Text(error), dismissButton: .default(Text("Ok")) {
							// faz algo quando some o alerta
					})
				}
			}
		}
	}
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
		SplashView(state: .error("teste de erro no servidor"))
    }
}
