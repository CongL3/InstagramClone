//
//  PostsView.swift
//  InstragramClone
//
//  Created by Cong Le on 09/03/2021.
//

import SwiftUI

struct PostHeaderView: View {
	var person: Person
    var body: some View {
		HStack(spacing: 5) {
			Image(person.image)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 35)
				.clipShape(Circle())
				.overlay(Circle()
							.stroke(Color.pink, lineWidth: 2))
				.padding(.leading, 10)
			
			VStack(alignment: .leading, spacing: 0) {
				Text(person.name)
					.font(.system(size: 12))
				Text("Located at home - Hanoi")
					.font(.system(size: 12))
			}
			
			Spacer()
			Image("dots")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 15)
				.padding(.trailing, 10)
		}    }
}

