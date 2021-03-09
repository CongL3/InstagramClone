//
//  CommentsSectionView.swift
//  InstragramClone
//
//  Created by Cong Le on 10/03/2021.
//

import SwiftUI

struct CommentsSectionView: View {
    var body: some View {
		VStack(alignment: .leading, spacing: 5) {
				Text("Alice This is my picture from Hoi An")
					.font(.system(size: 12))
					.padding(.leading, 10)
					
			HStack {
				Text("Cong My princess!!!!! <3")
					.font(.system(size: 12))
					.padding(.leading, 10)
				Spacer()
				Image("heart")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 20)
					.padding(.trailing, 10)
			}

			HStack {
				Text("Cong Tooo cuteeeeeeeeeeeeeeeee")
					.font(.system(size: 12))
					.padding(.leading, 10)
				Spacer()
				Image("heart")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 20)
					.padding(.trailing, 10)
			}
			Text("view all 10 comments")
				.font(.system(size: 12))
				.foregroundColor(.gray)
				.padding(.leading, 10)
			
			HStack {
				Text("Cong My Baby xD")
					.font(.system(size: 12))
					.padding(.leading, 10)
				Spacer()
				Image("heart")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 20)
					.padding(.trailing, 10)
			}
		}
    }
}

struct CommentsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsSectionView()
    }
}
