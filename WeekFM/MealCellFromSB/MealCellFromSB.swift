//
//  MealCellFromSB.swift
//  WeekFM
//
//  Created by Оля on 24.02.2021.
//

import UIKit

class MealCellFromSB: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var imageFood: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    // MARK: Methods
    func set(title: String, description: String, image: UIImage) {
        self.titleLabel.text = title
        self.descriptionLabel.text = description
        self.imageFood.image = image
    }
}
