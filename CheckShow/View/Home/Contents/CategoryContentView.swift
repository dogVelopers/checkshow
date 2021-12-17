//
//  CategoryContentView.swift
//  CheckShow
//
//  Created by judongseok on 2021/12/18.
//

import SwiftUI

struct CategoryContentView: View {
    @State var category: String
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(category)
                .font(.system(size: 20))
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 15, leading: 16, bottom: 10, trailing: 0))
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    ForEach(1..<10) { i in
                        Image("post\(i)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 130, alignment: .center)
                            .cornerRadius(8)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            })
            Spacer()
        }
    }
}

struct CategoryContentView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryContentView(category: "카테고리")
    }
}
