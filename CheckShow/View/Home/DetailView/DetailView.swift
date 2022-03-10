//
//  detailView.swift
//  CheckShow
//
//  Created by judongseok on 2022/02/20.
//

import SwiftUI

struct DetailView: View {
    var item: performance
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView {
                AsyncImage(url: URL(string: item.introImages[0].url)) { image in
                    if let image = image.image {
                        image
                            .resizable()
                            .scaledToFit()
                    } else if image.error != nil {
                        // 이미지가 비어있는 경우
                        Image(systemName: "star")
                    }
                }
            }
            
//            HStack {
//                AsyncImage(url: URL(string: item.posterUrl)) { image in
//                    image
//                        .resizable()
//                        .scaledToFill()
//                } placeholder: {
//                    Color.purple.opacity(0.1)
//                }
//                .frame(width: 100, height: 150)
//                .cornerRadius(8)
//                .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.6), radius: 10, x: 0, y: 8)
//                .padding(.trailing, 30)
//
//                VStack(alignment: .leading) {
//                    Text(item.performanceName)
//                        .font(.system(size: 25))
//                        .fontWeight(.semibold)
//                        .padding(.bottom, 5)
//                    Text(item.genreName)
//                        .font(.system(size: 15))
//                        .fontWeight(.regular)
//                        .padding(.bottom, 5)
//                    Text(item.runtime)
//                        .font(.system(size: 15))
//                        .fontWeight(.regular)
//                        .padding(.bottom, 5)
//                    Text(item.facilityDetailName)
//                        .font(.system(size: 15))
//                }
//
//                Spacer()
//            }
//            .frame(width: UIScreen.main.bounds.width - 48)
//
//            Text(item.story)
        }
    }
}
