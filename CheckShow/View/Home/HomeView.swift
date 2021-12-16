//
//  HomeView.swift
//  CheckShow
//
//  Created by judongseok on 2021/12/15.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    // test
    var text: [String] = ["영화", "공연", "연극", "영화", "공연", "연극", "영화", "공연", "연극", "영화", "공연", "연극"]
    var body: some View {
        VStack {
            ScrollViewReader { proxyReader in
                // navbar
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<viewModel.getCategoryCount()) { i in
                            Button(action: {
                                proxyReader.scrollTo(i, anchor: .top)
                            }) {
                                Text(viewModel.getCategory(n: i))
                                    .font(.system(size: 25, weight: .bold))
                                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                                    .foregroundColor(i == viewModel.getClickedCategory() ? .black : .gray)

                            }
                            if i < viewModel.getCategoryCount() - 1 {
                                Text("|")
                                    .foregroundColor(.gray)
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 3, trailing: 0))
                            }
                        }
                    }
                    .padding(EdgeInsets(top: 10, leading: 8, bottom: 0, trailing: 0))
                }
                // contentview
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 0) {
                        ForEach(0..<viewModel.getCategoryCount()) { i in
                            Text(text[i].description)
                                .frame(
                                    minWidth: UIScreen.screenWidth,
                                    maxWidth: .infinity,
                                    minHeight: 0,
                                    maxHeight: .infinity,
                                    alignment: .topLeading
                                )
                                .id(i)
                        }
                    }
                }
                Divider()
            }
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
