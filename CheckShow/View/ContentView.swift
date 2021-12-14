//
//  ContentView.swift
//  CheckShow
//
//  Created by judongseok on 2021/12/12.
//

import SwiftUI
// MARK: - Tab Item
struct TabItem: View {
    var title: String
    var image: String
    var body: some View {
        Text("\(title)")
            .tabItem {
                Image(systemName: "\(image)")
                Text("\(title)")
            }
    }
}

// MARK: - View
struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("홈")
                    }
                TabItem(title: "검색", image: "magnifyingglass")
                TabItem(title: "평가", image: "star")
                TabItem(title: "소식", image: "ellipsis.bubble.fill")
                TabItem(title: "마이페이지", image: "person.fill")
            }

        }
    }
}

// MARK: - Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
