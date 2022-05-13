//
//  Gender.swift
//  Habit
//
//  Created by Jean Camargo on 13/05/22.
//

import Foundation

enum Gender: String, CaseIterable, Identifiable {
	case male = "Masculino"
	case famale = "Feminino"
	
	var id: String {
		self.rawValue
	}
}
