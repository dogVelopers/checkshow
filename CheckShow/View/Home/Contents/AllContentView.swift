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
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    TabView {
                        ForEach(1..<10) { i in
                            VStack(spacing: 5) {
                                ZStack(alignment: .bottomLeading) {
                                    Image("post\(i)")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: UIScreen.screenWidth - 110, height: 400, alignment: .center)
                                        .cornerRadius(32)
                                        .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.8), radius: 24, x: 0, y: 0)
                                    Rectangle()
                                        .frame(width: UIScreen.screenWidth - 110, height: 400, alignment: .center)
                                        .opacity(0.45)
                                        .cornerRadius(32)

                                    VStack {
                                        Text("2022-02-20")
                                            .font(.system(size: 15))
                                            .fontWeight(.light)
                                            .foregroundColor(.white)
                                            .frame(width: 230, alignment: .leading)
                                            .padding(.bottom, 5)

                                        Text("젠틀맨스 가이드: 사랑과 살인 편")
                                            .font(.system(size: 25))
                                            .fontWeight(.light)
                                            .foregroundColor(.white)
                                            .frame(width: 230, alignment: .leading)
                                            .padding(.bottom, 1)

                                        Text("뮤지컬")
                                            .font(.system(size: 15))
                                            .fontWeight(.light)
                                            .foregroundColor(.white)
                                            .frame(width: 230, alignment: .leading)
                                            .padding(.bottom, 10)
                                    }
                                    .padding(EdgeInsets(top: 0, leading: 24, bottom: 20, trailing: 0))

                                }
    //                            Text("예상★3.9")
    //                                .font(.system(size: 14))
    //                                .foregroundColor(.pink)
    //                                .frame(maxWidth: .infinity, alignment: .topLeading)
                            }
                            .frame(width: UIScreen.screenWidth - 70)
                        }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .frame(width: UIScreen.screenWidth, height: 500, alignment: .center)
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 30))
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
