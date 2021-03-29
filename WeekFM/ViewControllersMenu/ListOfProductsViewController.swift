//
//  ListOfProductsViewController.swift
//  WeekFM
//
//  Created by Оля on 10.03.2021.
//

import UIKit

class ListOfProductsViewController: UIViewController {
    // MARK: Properties
    private var listOfProducts: [String] = ["A", "B"]
    
    // MARK: Outlets
    @IBOutlet weak var listOfProductsTable: UITableView! {
        didSet {
            listOfProductsTable.tableFooterView = UIView()
            listOfProductsTable.backgroundColor = UIColor(named: "fonColor")
       }
    }
    
    //MARK: Life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfProductsTable.delegate = self
        listOfProductsTable.dataSource = self
        listOfProductsTable.setEditing(true, animated: false)
    }
    
}

extension ListOfProductsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifier", for: indexPath)
        cell.textLabel?.text = productList[indexPath.row]
        cell.backgroundColor = .clear
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return UITableViewCell.EditingStyle.init(rawValue: 3)!
    }
    func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int) {
       
    }
}
