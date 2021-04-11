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
				HStack.init(alignment: .top, spacing: 10) {
					VStack() {
						ZStack() {
							Image("cong")
								.resizable()
								.aspectRatio(contentMode: .fit)
								.frame(width: 72, height: 72)
								.foregroundColor(.gray)
								.clipShape(Circle())
								.overlay(Circle()
											.stroke(Color.clear, lineWidth: 2))
								.padding(.leading, 10)

							ZStack{
								Circle()
									.foregroundColor(.blue)
									.frame(width:25, height:25)
								Image(systemName: "plus")
									.font(Font.system(size: 14, weight: .bold))
									.foregroundColor(.white)
									.frame(width:20, height:20)
								
							}//: ZSTACK
							.overlay(Circle().stroke(Color.white, lineWidth:2.5))
							.offset(x:20 , y:20)

							
						}
						Text("Your story")
							.font(.system(size: 12))
					}
					ForEach(people, id: \.id) { person in
						VStack {
							
							ImagePinkCircleView(image: person.image, width: 72)
							
							Text(person.name)
								.font(.system(size: 12))
						}

					}
				} // LHStack
			} // Scrollview
		}
	}
}

