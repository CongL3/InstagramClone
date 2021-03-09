//
//  LikesBarView.swift
//  InstragramClone
//
//  Created by Cong Le on 10/03/2021.
//

import SwiftUI

struct LikesBarView: View {
    var body: some View {
		HStack {
			Image("cong")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 18)
				.clipShape(Circle())
				.padding(.leading, 10)

			
			Text("Liked by Cong and 224 others")
				.font(.system(size: 12))
		}    }
}
