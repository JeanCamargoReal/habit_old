//
//  SignUpViewRouter.swift
//  Habit
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 29/06/22.
//

import SwiftUI

enum SignUpViewRouter {
    
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        
        return HomeView(viewModel: viewModel)
    }
}
