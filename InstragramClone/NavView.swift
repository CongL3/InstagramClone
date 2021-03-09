//
//  NavView.swift
//  InstragramClone
//
//  Created by Cong Le on 09/03/2021.
//

import SwiftUI

struct NavView: View {
	
	var colWidth: CGFloat
	
    var body: some View {
		LazyVGrid.init(columns: [
			GridItem(.fixed(colWidth)),
			GridItem(.fixed(colWidth)),
			GridItem(.fixed(colWidth))
		]) {
			Spacer()
			Text("Instagram")
				.font(.custom("OleoScript-Regular", size: 30))
			Image("mesages")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 12)
		}
	}
}

