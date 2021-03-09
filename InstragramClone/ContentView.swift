//
//  ContentView.swift
//  InstragramClone
//
//  Created by Cong Le on 09/03/2021.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
		
		GeometryReader { geometry in
			let colWidth = geometry.size.width / 3
			
			TabView {
				NavigationView {
					VStack {
						ScrollView {
							
						}
					}
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

