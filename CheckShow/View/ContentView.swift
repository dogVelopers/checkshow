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
            HomeView()
        }
    }
}

// MARK: - Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
