//
//  SignInUIState.swift
//  Habit
//
//  Created by Jean Camargo on 11/05/22.
//

import Foundation

enum SignInUIState {
	case none
	case loading
	case goToHomeScreen
	case error(String)
}
