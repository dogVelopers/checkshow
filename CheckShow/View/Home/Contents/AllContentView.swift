//
//  AllContentView.swift
//  CheckShow
//
//  Created by judongseok on 2021/12/17.
//

import SwiftUI

struct AllContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("박스오피스 순위")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 15, leading: 16, bottom: 10, trailing: 0))
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    ForEach(1..<10) { i in
                        VStack(spacing: 5) {
                            ZStack(alignment: .bottomLeading) {
                                Image("post\(i)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 100, height: 130, alignment: .center)
                                    .cornerRadius(8)
                                Rectangle()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .opacity(0.85)
                                    .cornerRadius(4)
                                    .padding(4)
                                Text("\(i)")
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .padding(4)
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .bold, design: .default))
                            }
                            Text("Text입니다 \(i) 요롱롱")
                                .font(.system(size: 14))
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                            Text("예상★3.9")
                                .font(.system(size: 14))
                                .foregroundColor(.pink)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                        }
                        .frame(width: 100, height: 200, alignment: .topLeading)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            })
            Spacer()
        }
    }
}

struct AllContentView_Previews: PreviewProvider {
    static var previews: some View {
        AllContentView()
    }
}
