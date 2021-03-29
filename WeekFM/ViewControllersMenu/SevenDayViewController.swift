//
//  SevenDayViewController.swift
//  WeekFM
//
//  Created by Оля on 13.02.2021.
//

import UIKit

class SevenDayViewController: UIViewController {
    
    // MARK: Variables
    let cellIdentifier = "MealCellForDiet"
    private let kallories: String = "Калорийность рациона - 1291 ккал"
    private var model: [FoodModel] = [FoodModel(title: .breakfast, description: "Овсянка (Геркулес 50 г + 1 банан + финики 2 шт + семена льна 1 ч.л.) + ряженка 2,5% 120г ", foodImage: UIImage(named: "Breakfast")!),
        FoodModel(title: .firstSnack, description: "Творог 2% 100 г с голубикой 100 г ", foodImage: UIImage(named: "Snack1")!),
        FoodModel(title: .lunch, description: "Паста с говядиной в соусе(макароны 50г + говядина 50г + помидор 150 г + масло 1 ч.л.) + огурец + руккола", foodImage: UIImage(named: "Lunch")!),
        FoodModel(title: .secondSnack, description: "Яблоко 1 шт", foodImage: UIImage(named: "Snack2")!),
        FoodModel(title: .dinner, description: "Крем-суп из чечевицы с лососем(лосось 70 г + морковь 1/2 + чечевица (50 г сухой), масло 1 ч.л., специи)", foodImage: UIImage(named: "Dinner")!)]
    
    @IBOutlet weak var sevenTableView: UITableView! {
        didSet {
            sevenTableView.tableFooterView = UIView()
            sevenTableView.backgroundColor = UIColor(named: "fonColor")
            sevenTableView.clipsToBounds = true
        }
    }
    
    //MARK: Life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        sevenTableView.delegate = self
        sevenTableView.dataSource = self
    }
}

extension SevenDayViewController: UITableViewDelegate, UITableViewDataSource {
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
