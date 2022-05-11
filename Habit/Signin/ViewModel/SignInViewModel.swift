//
//  SignInViewModel.swift
//  Habit
//
//  Created by Jean Camargo on 11/02/22.
//

import SwiftUI

class SignInViewModel: ObservableObject {
	@Published var uiState: SignInUIState = .none
	
	func login(email: String, password: String) {
		DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
			self.uiState = .goToHomeScreen
		}
	}
}
