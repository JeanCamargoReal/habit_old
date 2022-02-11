//
//  SignInView.swift
//  Habit
//
//  Created by Jean Camargo on 11/02/22.
//

import SwiftUI

struct SignInView: View {
	
	@ObservedObject var viewModel: SignInViewModel
	
    var body: some View {
        Text("Hello, World!")
			.background(Color.blue)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
		let viewModel = SignInViewModel()
        SignInView(viewModel: viewModel)
    }
}
