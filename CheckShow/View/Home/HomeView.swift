//
//  HomeView.swift
//  CheckShow
//
//  Created by judongseok on 2021/12/15.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    @State var id = 0

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // navbar
            HStack {
                Text("Perfomence")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Spacer()
                // 1연극, 2뮤지컬, 3무용, 4클래식, 5오페라, 6국악, 7복합
                Menu {
                    Button {
                        // 데이터 교체 로직
                        id = 1
                    } label: {
                        Text("Drama")
                    }
                    Button {
                        // 데이터 교체 로지
                        id = 2
                    } label: {
                        Text("Musical")
                    }
                    Button {
                        // 데이터 교체 로지
                        id = 3
                    } label: {
                        Text("Dancing")
                    }
                    Button {
                        // 데이터 교체 로지
                        id = 4
                    } label: {
                        Text("Classic")
                    }
                    Button {
                        // 데이터 교체 로지
                        id = 5
                    } label: {
                        Text("Opera")
                    }
                    Button {
                        // 데이터 교체 로지
                        id = 6
                    } label: {
                        Text("Traditional Korean music")
                    }
                    Button {
                        // 데이터 교체 로지
                        id = 7
                    } label: {
                        Text("ETC")
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
                AllContentView(id: $id)
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
