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
			Image("heart")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 25)
				.padding(.leading, 10)
			
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
				.padding(.trailing, 8)
			}    }
}
