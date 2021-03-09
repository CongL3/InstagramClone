//
//  ContentView.swift
//  InstragramClone
//
//  Created by Cong Le on 09/03/2021.
//

import SwiftUI

struct ContentView: View {

	let people: [Person] = [
		Person.init(name: "Princess", image: "alice-princess"),
		Person.init(name: "Work", image: "alice-work"),
		Person.init(name: "model", image: "model"),
		Person.init(name: "Brushing", image: "brushing"),
		Person.init(name: "Pinkcoat", image: "pinkcoat"),
		Person.init(name: "heart-pose", image: "heart-pose"),
		Person.init(name: "moto", image: "moto"),
		Person.init(name: "monkey-statue", image: "monkey-statue"),
		Person.init(name: "near-beach", image: "near-beach")
	]
    var body: some View {
		
		GeometryReader { geometry in
			let colWidth = geometry.size.width / 3
			
			TabView {
				NavigationView {
					VStack {
						NavView.init(colWidth: colWidth)						

						ScrollView {
							StoryView(people: people)
							
							LazyVStack(alignment: .leading, spacing: 5) {
								ForEach(people, id: \.id) { person in
									
									PostHeader(person: person)
									
									Image(person.image)
										.resizable()
										.aspectRatio(contentMode: .fill)


									PostBottomBar()
									
									HStack {
										Image("cong")
											.resizable()
											.aspectRatio(contentMode: .fit)
											.frame(width: 18)
											.clipShape(Circle())
											.padding(.leading, 10)

										
										Text("Liked by Cong and 224 others")
											.font(.system(size: 12))
									}
									
									VStack {
//										HStack(alignment: .lastTextBaseline, spacing: 0) {
											Text("Alice This is my picture from Hoi An")
												.font(.system(size: 12))
												.padding(.leading, 10)
												
//										}
										HStack {
											Text("Cong My princess!!!!! <3")
												.font(.system(size: 12))
												.padding(.leading, 10)
											Spacer()
											Image("heart")
												.resizable()
												.aspectRatio(contentMode: .fit)
												.frame(width: 20)
												.padding(.trailing, 10)
										}
										HStack {
											Text("Cong Tooo cuteeeeeeeeeeeeeeeee")
											.font(.system(size: 12))
										}
										Text("view all 10 comments")
											.font(.system(size: 12))
											.foregroundColor(.gray)
										
										HStack {
											Text("Cong My baby xD")
											.font(.system(size: 12))
										}
									}
								}
							}
						}
					}.navigationBarHidden(true)
				}
				
				.tabItem {
					Image.init("home")
				}
				NavigationView {
					VStack {
						
					}
				}
				.tabItem {
					Image.init("search")
				}
				NavigationView {
					VStack {
						
					}
				}
				.tabItem {
					Image.init("new-post")
				}
				NavigationView {
					VStack {
						
					}
				}
				.tabItem {
					Image.init("heart")
				}
				NavigationView {
					VStack {
						
					}
				}
				.tabItem {
					Image.init("profile")
				}
			}
		}

    }
}

