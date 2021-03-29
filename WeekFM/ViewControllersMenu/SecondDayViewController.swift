//
//  SecondDayViewController.swift
//  WeekFM
//
//  Created by Оля on 13.02.2021.
//

import UIKit

class SecondDayViewController: UIViewController {
    
    // MARK: Variables
    let cellIdentifier = "MealCellForDiet"
    private let kallories: String = "Калорийность рациона - 1283 ккал"
    private var model: [FoodModel] = [FoodModel(title: .breakfast, description: "Скрэмбл из 2 яиц + хлеб цельнозерновой 35 г + авокадо 35 г + шпинат + киви", foodImage: UIImage(named: "Breakfast")!),
        FoodModel(title: .firstSnack, description: "Банан 1 шт + миндаль 12 шт", foodImage: UIImage(named: "Snack1")!),
        FoodModel(title: .lunch, description: "Треска запеченая 120 г + гарнир из кус-куса 50 г сухого + огурец 1 шт + помидор 1 шт", foodImage: UIImage(named: "Lunch")!),
        FoodModel(title: .secondSnack, description: "Овощные палочки(сельдерей 50 г + перец болгарский 50 г + морковь 50 г) + хумус 35 г + хлебцы цельнозерновые 2 шт ", foodImage: UIImage(named: "Snack2")!),
        FoodModel(title: .dinner, description: "Котлеты куриные(филе куриное 100 г + яйцо 1 шт)+ гречка(40г сухой) + салат: помидор 1 шт, огурец 1 шт, масло 1 ч.л.", foodImage: UIImage(named: "Dinner")!)]
    
    // MARK: Outlets
    @IBOutlet weak var secondDayTableVIew: UITableView! {
    didSet {
        secondDayTableVIew.tableFooterView = UIView()
        secondDayTableVIew.backgroundColor = UIColor(named: "fonColor")
        secondDayTableVIew.clipsToBounds = true
    }
    }
    // MARK: Life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondDayTableVIew.delegate = self
        secondDayTableVIew.dataSource = self
        
    }
}

extension SecondDayViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        if let cell = cell as? MealCellForDiet {
        cell.set(title: self.model[indexPath.row].title.rawValue,
                 description: self.model[indexPath.row].description,
                 image: self.model[indexPath.row].foodImage)
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return kallories
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .clear
    }
}
