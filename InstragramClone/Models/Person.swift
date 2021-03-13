//
//  Person.swift
//  InstragramClone
//
//  Created by Cong Le on 09/03/2021.
//

import Foundation

struct Person : Identifiable, Hashable {
	var id: UUID = UUID()
	var name: String
	var image: String
}
