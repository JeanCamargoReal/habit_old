//
//  SplashViewModel.swift
//  Habit
//
//  Created by Jean Camargo on 10/02/22.
//

import SwiftUI

class SplashViewModel: ObservableObject {
	@Published var uiState: SplashUIState = .loading
		
	func onAppear() {
		// faz algo assincrono e muda o estado da uiState
        
        // Essa linha simula o tempo de uma requisição, apenas isso.
		DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
			// aqui é chamado depois de 3 segundos
			self.uiState = .goToSignInScreen
		}
	}
}

extension SplashViewModel {
	func signInView() -> some View {
		return SplashViewRouter.makeSignInView()
	}
}
