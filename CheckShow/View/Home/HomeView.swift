//
//  HomeView.swift
//  CheckShow
//
//  Created by judongseok on 2021/12/15.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()

    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<viewModel.getCategoryCount()) {i in
                        Button(action: {
                            print("asdfasdf")
                        }) {
                            Text(viewModel.getCategory(n: i))
                                .font(.system(size: 25, weight: .bold))
                                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                                .foregroundColor(.gray)

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
            Spacer()
            Divider()
        }
    }
}

func onClick() {
    print("onClick")
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
