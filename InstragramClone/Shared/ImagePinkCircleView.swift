//
//  SwiftUIView.swift
//  InstragramClone
//
//  Created by Cong Le on 10/03/2021.
//

import SwiftUI

struct ImagePinkCircleView: View {
	var image: String
	var width: CGFloat
	
	var body: some View {
		Image(image)
			.resizable()
			.aspectRatio(contentMode: .fit)
			.frame(width: width)
			.clipShape(Circle())
			.overlay(Circle()
						.stroke(Color.pink, lineWidth: 2))
			.padding(.leading, 10)
    }
}

