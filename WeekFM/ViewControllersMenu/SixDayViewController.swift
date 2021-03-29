//
//  SixDayViewController.swift
//  WeekFM
//
//  Created by Оля on 13.02.2021.
//

import UIKit

class SixDayViewController: UIViewController {
    
    // MARK: Variables
    let cellIdentifier = "MealCellForDiet"
    private let kallories: String = "Калорийность рациона - 1267 ккал"
    private var model: [FoodModel] = [FoodModel(title: .breakfast, description: "Сырники(творог 2: 150 г + яйцо куриное 1/2 + мука цельнозерновая 2 ст.л.) + сметана 10% 1 ст.л.", foodImage: UIImage(named: "Breakfast")!),
        FoodModel(title: .firstSnack, description: "Манго 150 г", foodImage: UIImage(named: "Snack1")!),
        FoodModel(title: .lunch, description: "Минестроне(помидор 1 шт + морковь 1/2 шт + картофель 1 шт + лук 1/2 + чеснок + зелень) + хлебцы 1 шт + сыр 40 г", foodImage: UIImage(named: "Lunch")!),
        FoodModel(title: .secondSnack, description: "Яйцо куриное вареное 1 шт + хлеб цельнозерновой 35 г + огурец 1 шт", foodImage: UIImage(named: "Snack2")!),
        FoodModel(title: .dinner, description: "Говядина запеченая со специями в фольге 100 г + руколла + помидоры черри 100 г", foodImage: UIImage(named: "Dinner")!)]
    
    @IBOutlet weak var sixTableView: UITableView! {
        didSet {
            sixTableView.tableFooterView = UIView()
            sixTableView.backgroundColor = UIColor(named: "fonColor")
            sixTableView.clipsToBounds = true
        }
    }
    
    //MARK: Life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        sixTableView.delegate = self
        sixTableView.dataSource = self
    }
}

extension SixDayViewController: UITableViewDelegate, UITableViewDataSource {
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
