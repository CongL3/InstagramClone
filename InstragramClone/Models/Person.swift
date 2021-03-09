//
//  Person.swift
//  InstragramClone
//
//  Created by Cong Le on 09/03/2021.
//

import Foundation

struct Person : Identifiable {
	var id: UUID = UUID()
	var name: String
	var image: String
}
