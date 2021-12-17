//
//  HomeViewModel.swift
//  CheckShow
//
//  Created by judongseok on 2021/12/16.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    private let category = ["전체", "뮤지컬", "클래식", "오페라", "무용", "국악", "복합", "아동", "오픈런"]
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
