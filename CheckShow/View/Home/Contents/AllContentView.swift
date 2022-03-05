//
//  AllContentView.swift
//  CheckShow
//
//  Created by judongseok on 2021/12/17.
//

import SwiftUI

struct AllContentView: View {
    @State var performances: [performance] = []
    @Binding var id: Int
    @State private var showingSheet = false

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            if !performances.isEmpty {
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack {
                        TabView {
                            ForEach(performances, id: \.id) { i in
                                VStack(spacing: 5) {
                                    ZStack(alignment: .bottomLeading) {
                                        AsyncImage(url: URL(string: i.posterUrl))
                                            .frame(width: UIScreen.screenWidth - 110, height: 400)
                                            .cornerRadius(32)
                                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.6), radius: 10, x: 0, y: 8)
                                        Rectangle()
                                            .frame(width: UIScreen.screenWidth - 110, height: 400, alignment: .center)
                                            .opacity(0.45)
                                            .cornerRadius(32)

                                        VStack {
                                            Text(i.endDate)
                                                .font(.system(size: 15))
                                                .fontWeight(.light)
                                                .foregroundColor(.white)
                                                .frame(width: 230, alignment: .leading)
                                                .padding(.bottom, 5)

                                            Text(i.performanceName)
                                                .font(.system(size: 25))
                                                .fontWeight(.light)
                                                .foregroundColor(.white)
                                                .frame(width: 230, alignment: .leading)
                                                .padding(.bottom, 1)

                                            Text(i.genreName)
                                                .font(.system(size: 15))
                                                .fontWeight(.light)
                                                .foregroundColor(.white)
                                                .frame(width: 230, alignment: .leading)
                                                .padding(.bottom, 10)
                                        }
                                        .padding(EdgeInsets(top: 0, leading: 24, bottom: 24, trailing: 0))
                                    }
                                }
                                .frame(width: UIScreen.screenWidth - 70)
                                .sheet(isPresented: $showingSheet) {
                                    DetailView()
                                }
                            }
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        }
                        .tabViewStyle(PageTabViewStyle())
                        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
                        .frame(width: UIScreen.screenWidth, height: 500, alignment: .center)
                    }
                })
            } else {
                Text("Loading...")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .frame(width: UIScreen.screenWidth, height: 500, alignment: .center)
            }
            Button(action: {
                showingSheet.toggle()
            }) {
                Text("More")
                    .font(.system(size: 20))
                    .fontWeight(.light)
            }
            .foregroundColor(.black)
            .padding(EdgeInsets(top: 5, leading: 30, bottom: 5, trailing: 30))
            .background(.white)
            .cornerRadius(16)
            .padding(.top, 40)
            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.3), radius: 4, x: 0, y: 4)
            Spacer()
        }
        .onChange(of: id) { _ in
            GetPerformance.shared.getPersonInfo(genreId: id) { [self] response in
                switch response {
                case .success(let data):
                    if let data = data as? [performance] {
                        performances = data
                    }
                case .requestErr:
                    print("requestErr")
                case .pathErr:
                    print("pathErr")
                case .serverErr:
                    print("serverErr")
                case .networkFail:
                    print("networkErr")
                }
            }
        }
    }
}

struct AllContentView_Previews: PreviewProvider {
    static var previews: some View {
        AllContentView(id: .constant(1))
    }
}
