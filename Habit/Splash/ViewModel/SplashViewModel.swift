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
		DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
			self.uiState = .goToSignInScreen
		}
	}
}

// Simulação de busca de dados em um servidor
extension SplashViewModel {
	func signInView() -> some View {
		return SplashViewRouter.makeSignInView()
	}
}
