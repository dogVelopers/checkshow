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
            Text("박스오피스 순위")
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

struct AllContentView_Previews: PreviewProvider {
    static var previews: some View {
        AllContentView()
    }
}
