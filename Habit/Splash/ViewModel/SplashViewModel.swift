//
//  SplashViewModel.swift
//  Habit
//
//  Created by Jean Camargo on 10/02/22.
//

import SwiftUI

class SplashViewModel: ObservableObject {
	@Published var uiState: SplashUIState = .goToHomeScreen
		
	func onAppear() {
		// Simulação de busca de dados em um servidor
		DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
			self.uiState = .loading
		}
	}
}
