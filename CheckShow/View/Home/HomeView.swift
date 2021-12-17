//
//  HomeView.swift
//  CheckShow
//
//  Created by judongseok on 2021/12/15.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    var currentPage = 0
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // navbar
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<self.viewModel.getCategoryCount()) { i in
                        Button(action: {
                            withAnimation {
                                self.viewModel.setClickedCategory(n: i)
                            }
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
            HStack(spacing: 0) {
                if self.viewModel.getClickedCategory() == 0 {
                    AllContentView()
                } else if self.viewModel.getClickedCategory() == 1 {
                    CategoryContentView(category: "뮤지컬")
                } else if self.viewModel.getClickedCategory() == 2 {
                    CategoryContentView(category: "클래식")
                } else if self.viewModel.getClickedCategory() == 3 {
                    CategoryContentView(category: "오페라")
                } else if self.viewModel.getClickedCategory() == 4 {
                    CategoryContentView(category: "무용")
                } else if self.viewModel.getClickedCategory() == 5 {
                    CategoryContentView(category: "국악")
                } else if self.viewModel.getClickedCategory() == 6 {
                    CategoryContentView(category: "복합")
                } else if self.viewModel.getClickedCategory() == 7 {
                    CategoryContentView(category: "아동")
                } else if self.viewModel.getClickedCategory() == 8 {
                    CategoryContentView(category: "오픈런")
                }
            }
            Divider()
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
