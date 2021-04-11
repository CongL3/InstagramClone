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
			
			ImagePinkCircleView(image: person.image, width: 35)
			
			VStack(alignment: .leading, spacing: 0) {
				Text(person.name)
					.font(.system(size: 12))
				Text("Located at home - Hanoi")
					.font(.system(size: 12))
			}
			
			Spacer()
			Image("more")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 15)
				.padding(.trailing, 10)
		}    }
}

