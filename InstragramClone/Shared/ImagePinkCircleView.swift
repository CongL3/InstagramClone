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
	
	private let gradient = LinearGradient( gradient: Gradient(colors: [Color.yellow, Color(red: 252/255, green: 175/255, blue: 69/255) , Color.red, Color(red: 225/255, green: 48/255, blue: 108/255), Color(red: 193/255, green: 53/255, blue: 132/255) , Color(red: 131/255, green: 58/255, blue: 180/255)]), startPoint: .bottomLeading, endPoint: .topTrailing)

	var body: some View {
		
		ZStack {
			Image(image)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: width, height: width, alignment: .center)
				.clipShape(Circle())
			
			Circle().stroke(gradient , style: StrokeStyle(lineWidth: 2.5, lineCap: .round))
				.frame(width: width+6, height: width+6, alignment: .center)

		}
    }
}

