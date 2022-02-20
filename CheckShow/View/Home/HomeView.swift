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
            HStack {
                Text("Perfomence")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Spacer()
                Menu {
                    Button {
                        // 데이터 교체 로직
                    } label: {
                        Text("ALL")
                    }
                    Button {
                        // 데이터 교체 로지
                    } label: {
                        Text("Musical")
                    }
                } label: {
                     Image(systemName: "line.3.horizontal.decrease.circle")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                }
            }
            .padding(EdgeInsets(top: 0, leading: 50, bottom: 40, trailing: 50))

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
        }
        .frame(height: UIScreen.screenHeight * 0.75)
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
