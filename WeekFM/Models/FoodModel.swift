//
//  FoodModel.swift
//  WeekFM
//
//  Created by Оля on 24.02.2021.
//

import UIKit

struct FoodModel {
    enum TypeMeal: String, CaseIterable {
        case breakfast = "Завтрак"
        case firstSnack = "Перекус"
        case lunch = "Обед"
        case secondSnack = "Полдник"
        case dinner = "Ужин"
    }
    
    var title: TypeMeal
    var description: String
    var foodImage: UIImage
}
