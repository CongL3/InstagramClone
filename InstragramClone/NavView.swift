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
		HStack() {
			Text("Instagram")
				.font(.custom("OleoScript-Regular", size: 30))
				.padding(.leading, 10)

			Spacer()
			Image.init("messages")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 30)
				.padding(.trailing, 10)
		}
		.padding(.top, 5)
		.padding(.bottom, 0)
	}
}

