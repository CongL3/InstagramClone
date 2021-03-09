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
		Person.init(name: "Princess", image: "alice-princess"),
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
									
									PostsView(person: person)
									
									Image(person.image)
										.resizable()
										.aspectRatio(contentMode: .fill)


									HStack {
										Image("heart")
											.resizable()
											.aspectRatio(contentMode: .fit)
											.frame(width: 25)
										
										Image("comment")
											.resizable()
											.aspectRatio(contentMode: .fit)
											.frame(width: 25)

										Image("forward")
											.resizable()
											.aspectRatio(contentMode: .fit)
											.frame(width: 25)
										
										Spacer()

										Image("save")
											.resizable()
											.aspectRatio(contentMode: .fit)
											.frame(width: 25)
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

