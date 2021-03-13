//
//  PostBottomBar.swift
//  InstragramClone
//
//  Created by Cong Le on 09/03/2021.
//

import SwiftUI

struct PostBottomBarView: View {
    var body: some View {
		
		HStack(spacing: 12) {
			PostBottomBarImageView(name: "heart")
				.padding(.leading, 10)

			PostBottomBarImageView(name: "comment")

			PostBottomBarImageView(name: "forward")

			
			Spacer()

			Image("save")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 25)
				.padding(.trailing, 8)
			}    }
}

struct PostBottomBarImageView: View {
	var name: String
	
	var body: some View {
		Image("")
			.resizable()
			.aspectRatio(contentMode: .fit)
			.frame(width: 25)
	}
}
