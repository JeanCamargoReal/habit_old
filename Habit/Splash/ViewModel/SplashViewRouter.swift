//
//  SplashViewRouter.swift
//  Habit
//
//  Created by Jean Camargo on 11/02/22.
//

import SwiftUI

enum SplashViewRouter {
	static func makeSignInView() -> some View {
		let viewModel = SignInViewModel()
		return SignInView(viewModel: viewModel)
	}
}
