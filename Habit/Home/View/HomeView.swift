//
//  HomeView.swift
//  Habit
//
//  Created by Jean Camargo on 12/05/22.
//

import SwiftUI

struct HomeView: View {
	
	@ObservedObject var viewModel: HomeViewModel
	
	var body: some View {
		Text("Olá Home Page")
	}
}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView(viewModel: HomeViewModel())
	}
}


