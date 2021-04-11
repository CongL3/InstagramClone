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
			
			ZStack{
				Image("messages")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 30)
					.padding(.trailing, 10)

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
			}

		}
		.padding(.top, 5)
		.padding(.bottom, 0)
	}
}

