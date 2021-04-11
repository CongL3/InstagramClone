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
	
	let uploads: [[Person]] = [
		[
			Person.init(name: "Princess", image: "alice-princess"),
			Person.init(name: "Work", image: "alice-work"),
			Person.init(name: "model", image: "model")
		],
		[
			Person.init(name: "Brushing", image: "brushing"),
			Person.init(name: "Pinkcoat", image: "pinkcoat"),
			Person.init(name: "heart-pose", image: "heart-pose")
		],
		[
			Person.init(name: "moto", image: "moto"),
			Person.init(name: "monkey-statue", image: "monkey-statue"),
			Person.init(name: "near-beach", image: "near-beach")]
	]
	
	let profileSelections: [String] = [
		"grid",
		"tagged"
	]
	@State private var profileSelection = "grid"

	
	let layout = [
		GridItem(.flexible(minimum: 200, maximum: 200))
	]
    var body: some View {
		
		GeometryReader { geometry in
			let colWidth = geometry.size.width / 3
			
			TabView {
				NavigationView {
					VStack {
						HStack.init(alignment: .firstTextBaseline, spacing: 5) {
							Image.init("padlock")
							Text("congL3")
							Image("down-arrow")
							Spacer()
							Image("add")
							Image("hamburger")
						}
						ScrollView {
							VStack.init(alignment: .leading, spacing: 10) {
								HStack.init(alignment: .lastTextBaseline, spacing: 10) {
									ImagePinkCircleView.init(image: "model", width: 80)
									Spacer()
									VStack {
										Text("7")
										Text("Posts")
									}
									VStack {
										Text("241")
										Text("Followers")
									}
									VStack {
										Text("361")
										Text("Following")
									}.padding(.trailing, 10)
								}
								Text("cong.").padding(.leading, 10)
								HStack {
									Button("Edit Profile") {
										print("Edit Profile")
									}
									.buttonStyle(BorderedButton())
									
									Button.init("Saved") {
										print("Saved")
									}.buttonStyle(BorderedButton())
								}
								.padding(.leading, 10)
								.padding(.trailing, 10)
								
								StoryView(people: people)
								
								Picker("Please choose a color", selection: $profileSelection) {
									ForEach(profileSelections, id: \.self) {
										Image($0)
									}
								}
								.pickerStyle(SegmentedPickerStyle())
								
								// Pictures
	
								LazyVGrid.init(columns: layout, spacing: 0) {
									ForEach(uploads, id: \.self) { upload in
										LazyHStack {
											ForEach(upload, id: \.self) { person in
												Image(person.image)
													.resizable()
													.aspectRatio(contentMode: .fit)
													.frame(width: 100)
											}
										}.padding(.top, 10)
									}
								}

							}
						}
					}.navigationBarHidden(true)
				}
				.tabItem {
					Image.init("user")
				}
				
				NavigationView {
					VStack {
//						NavView.init(colWidth: colWidth).padding(.bottom, 10)
						
						ScrollView {
							StoryView(people: people)
							
							LazyVStack(alignment: .leading, spacing: 5) {
								ForEach(people, id: \.id) { person in
									
									PostHeaderView(person: person)
									
									Image(person.image)
										.resizable()
										.aspectRatio(contentMode: .fill)


									PostBottomBarView()
									
									LikesBarView()
									
									CommentsSectionView()
								}
							}
						}.padding(.top, 10) // Scroll view
					}
					.navigationBarTitle("", displayMode: .inline)
						.toolbar {
							ToolbarItem(placement: .navigationBarLeading) {
								Image("logo")
									.renderingMode(.template)
									.resizable()
									.scaledToFit()
									.frame(height:65)
							}//: TOOLBAR ITEM LEFT
				
							ToolbarItem(placement: .navigationBarTrailing) {
								HStack(alignment:.center, spacing:25){
									
									Button(action:{
										print("Go to messages")
									}){
										ZStack{
											Image("messages")
												.resizable()
												.scaledToFill()
												.frame(width: 25, height: 25, alignment: .center)
											
											Text("3")
												.font(Font.system(size: 13, weight: .bold))
												.frame(width:18, height:18)
												.background(Color.red)
												.foregroundColor(.white)
												.clipShape(Circle())
												.offset(
													x: 9,
													y: -9
												)
										}//: ZSTACK
									}
								}//: HSTACK
							}//: TOOLBAR ITEM RIGHT
						}//: TOOLBAR

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
					Image.init("add")
				}
				NavigationView {
					VStack {
						
					}
				}
				.tabItem {
					Image.init("heart")
				}
			}
		}

    }
}

struct BorderedButton: ButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		configuration
			.label
			.frame(maxWidth: .infinity)
			.foregroundColor(configuration.isPressed ? .black : .black)
			.padding()
			.border(Color.gray, width: 2)
			.cornerRadius(8)
			.font(Font.body.bold())
	}
}


