//
//  HomeViewModel.swift
//  CheckShow
//
//  Created by judongseok on 2021/12/16.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    let category = ["Drama", "Musical", "Dancing", "Classic", "Opera", "Traditional Korean music", "ETC"]
    @Published private var clickedCategory: Int = 0

    func getClickedCategory() -> Int {
        return clickedCategory
    }

    func setClickedCategory(n: Int) {
        clickedCategory = n
    }

    func getCategoryCount() -> Int {
        return category.count
    }

    func getCategory() -> [String] {
        return category
    }

    func getCategory(n: Int) -> String {
        return category[n]
    }
}
