//
//  FifthDayViewController.swift
//  WeekFM
//
//  Created by Оля on 13.02.2021.
//

import UIKit

class FifthDayViewController: UIViewController {
    
    // MARK: Variables
    let cellIdentifier = "MealCellForDiet"
    private let kallories: String = "Калорийность рациона - 1241 ккал"
    private var model: [FoodModel] = [FoodModel(title: .breakfast, description: "Ролл из лаваша армянского 100 г со слабосоленой семгой 40 г, салатом Айсберг и помидором 1 шт ", foodImage: UIImage(named: "Breakfast")!),
        FoodModel(title: .firstSnack, description: "Хурма 1 шт (или ягоды 150 г) + миндаль 8 шт ", foodImage: UIImage(named: "Snack1")!),
        FoodModel(title: .lunch, description: "Филе куриное запеченое 100 г + киноа (40г сухой) + салат: перец болгарский(1 шт), огурец(1 шт), масло (1 ч.л.)", foodImage: UIImage(named: "Lunch")!),
        FoodModel(title: .secondSnack, description: "Творог 2% 100г + груша 1 шт", foodImage: UIImage(named: "Snack2")!),
        FoodModel(title: .dinner, description: "Фасоль в томатном соусе 100 г + хлебцы цельнозерновые 2 шт + огурец 1 шт", foodImage: UIImage(named: "Dinner")!)]
    
    @IBOutlet weak var fiveTableView: UITableView! {
        didSet {
            fiveTableView.tableFooterView = UIView()
            fiveTableView.backgroundColor = UIColor(named: "fonColor")
            fiveTableView.clipsToBounds = true
        }
    }
    
    //MARK: Life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        fiveTableView.delegate = self
        fiveTableView.dataSource = self
    }
}

extension FifthDayViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return model.count
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
