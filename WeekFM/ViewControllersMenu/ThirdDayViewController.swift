//
//  ThirdDayViewController.swift
//  WeekFM
//
//  Created by Оля on 13.02.2021.
//

import UIKit

class ThirdDayViewController: UIViewController {
   
    // MARK: Variables
    let cellIdentifier = "MealCellForDiet"
    private let kallories: String = "Калорийность рациона - 1212 ккал"
    private var model: [FoodModel] = [FoodModel(title: .breakfast, description: "Овсяная каша (60 г сухой Геркулес) + орехи (фундук 8 шт) + сухофрукты (чернослив 2 шт + курага 3 шт)", foodImage: UIImage(named: "Breakfast")!),
        FoodModel(title: .firstSnack, description: "Яйцо куриное вареное (1 шт) + хлебцы цельнозерновые (1 шт) + сыр Адыгейский (30 г) + огурец (1 шт)", foodImage: UIImage(named: "Snack1")!),
        FoodModel(title: .lunch, description: "Уха(треска 70 г, рис жасмин 30 г сухого, лук 1/2, морковь 1/2) + огурец (1 шт)", foodImage: UIImage(named: "Lunch")!),
        FoodModel(title: .secondSnack, description: "Фруктовый салат(банан 1 шт, апельсин 1 шт, йогурт 2% натуральный 100 г)", foodImage: UIImage(named: "Snack2")!),
        FoodModel(title: .dinner, description: "Индейка грудка-гриль + овощи гриль(кабачки 100 г, при приготовлении смазать растительным маслом 1 ч.л.)", foodImage: UIImage(named: "Dinner")!)]
    
    // MARK: Outlets
    @IBOutlet weak var thirdTableVIew: UITableView! {
        didSet {
            thirdTableVIew.tableFooterView = UIView()
            thirdTableVIew.backgroundColor = UIColor(named: "fonColor")
            thirdTableVIew.clipsToBounds = true
       }
    }
    
    //MARK: Life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        thirdTableVIew.delegate = self
        thirdTableVIew.dataSource = self
    }
 }

extension ThirdDayViewController: UITableViewDelegate, UITableViewDataSource {
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
