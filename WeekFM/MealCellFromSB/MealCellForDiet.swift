//
//  MealCellForDiet.swift
//  WeekFM
//
//  Created by Оля on 10.03.2021.
//

import UIKit

class MealCellForDiet: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var imageViewDiet: UIImageView!
    @IBOutlet weak var textViewDiet: UIView!
    @IBOutlet weak var titleFood: UILabel!
    @IBOutlet weak var titleDecription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // MARK: Methods
    func set(title: String, description: String, image: UIImage) {
        self.titleFood.text = title
        self.titleDecription.text = description
        self.imageViewDiet.image = image
    }
}
