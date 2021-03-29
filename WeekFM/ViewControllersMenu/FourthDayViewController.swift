//
//  FourthDayViewController.swift
//  WeekFM
//
//  Created by Оля on 13.02.2021.
//

import UIKit

class FourthDayViewController: UIViewController {
    
    // MARK: Outlets
   let cellIdentifier = "MealCellForDiet"
    private let kallories: String = "Калорийность рациона - 1213 ккал"
    private var model: [FoodModel] = [FoodModel(title: .breakfast, description: "Оладьи(геркулес 60 г + яйцо куриное 1 шт + банан 1 шт размять вилкой)", foodImage: UIImage(named: "Breakfast")!),
        FoodModel(title: .firstSnack, description: "Салат(морковь 1 шт потереть + яйцо куриное вареное + сметана 10% 1 ст.л.)", foodImage: UIImage(named: "Snack1")!),
        FoodModel(title: .lunch, description: "Курица тушенная по азиатски(филе куриное 70г + перец болгарский 1/2 шт + морковь 1/2 шт + лук 1/2 шт, тушить на 1 ч.л. масла, специи) + дикий рис (40 г сухого)", foodImage: UIImage(named: "Lunch")!),
        FoodModel(title: .secondSnack, description: "Яблоко 1 шт", foodImage: UIImage(named: "Snack2")!),
        FoodModel(title: .dinner, description: "Запеченая семга 70 г + брокколи 150 г + сыр 20 г потереть", foodImage: UIImage(named: "Dinner")!)]
    
    @IBOutlet weak var fourTableView: UITableView! {
        didSet {
            fourTableView.tableFooterView = UIView()
            fourTableView.backgroundColor = UIColor(named: "fonColor")
            fourTableView.clipsToBounds = true
        }
    }
    
    //MARK: Life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        fourTableView.delegate = self
        fourTableView.dataSource = self
    }
}

extension FourthDayViewController: UITableViewDelegate, UITableViewDataSource {
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
