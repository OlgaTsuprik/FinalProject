//
//  FirstDayViewController.swift
//  WeekFM
//
//  Created by Оля on 13.02.2021.
//

import UIKit

class FirstDayViewController: UIViewController {
    
    // MARK: Variables
    let cellIdentifier = "MealCellForDiet"
    private let kallories: String = "Калорийность рациона - 1224 ккал"
    private var model: [FoodModel] = [FoodModel(title: .breakfast, description: "Овсяная каша с медом(60 г сухой Геркулес) + мед 1 ч.л.", foodImage: UIImage(named: "Breakfast")!),
        FoodModel(title: .firstSnack, description: "Творог 2% 150 г + яблоко 1 шт", foodImage: UIImage(named: "Snack1")!),
        FoodModel(title: .lunch, description: "Филе куриное запеченое (100 гр) + гречка(40 г сухой)", foodImage: UIImage(named: "Lunch")!),
        FoodModel(title: .secondSnack, description: "Банан + миндаль 8 шт", foodImage: UIImage(named: "Snack2")!),
        FoodModel(title: .dinner, description: "Треска запеченая 120 г + салат: помидор 1 шт, огурец 1 шт, масло 1 ч.л. + хлебцы цельнозерновые 2 шт", foodImage: UIImage(named: "Dinner")!)]
    
    // MARK: Outlets
    @IBOutlet weak var firstTableView: UITableView! {
        didSet {
            firstTableView.tableFooterView = UIView()
            firstTableView.backgroundColor = UIColor(named: "fonColor")
            firstTableView.clipsToBounds = true
        }
    }
    
    // MARK: Life Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        firstTableView.dataSource = self
        firstTableView.delegate = self
    }
}

extension FirstDayViewController: UITableViewDataSource,
                                  UITableViewDelegate {
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
