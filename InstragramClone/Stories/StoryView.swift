//
//  Stories.swift
//  InstragramClone
//
//  Created by Cong Le on 09/03/2021.
//

import SwiftUI

struct StoryView: View {
	var people: [Person]
	
	
    var body: some View {
		VStack(alignment: .leading) {
			ScrollView(.horizontal, showsIndicators: false) {
				LazyHStack.init(alignment: .firstTextBaseline, spacing: 12) {
					VStack {
						Image("cong")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(width: 73)
							.foregroundColor(.gray)
							.clipShape(Circle())
							.overlay(Circle()
										.stroke(Color.clear, lineWidth: 2))
							.padding(.leading, 10)

						Text("Your story")
							.font(.system(size: 12))
					}
					ForEach(people, id: \.id) { person in
						VStack {
							Image(person.image)
								.resizable()
								.aspectRatio(contentMode: .fit)
								.frame(width: 73)
								.clipShape(Circle())
								.overlay(Circle()
											.stroke(Color.pink, lineWidth: 2))

							
							Text(person.name)
								.font(.system(size: 12))
						}

					}
				}
			}
		}    }
}

