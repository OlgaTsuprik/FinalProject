//
//  FMButtonLinedButton.swift
//  WeekFM
//
//  Created by Оля on 01.02.2021.
//

import UIKit

@IBDesignable
class FMButtonLinedButton: UIButton {
    
    // MARK: Outlets
    @IBOutlet var mainButton: UIButton!
    @IBOutlet var buttomLine: UIView!
    
    // MARK: Variables
    var buttonTitle: String = "" {
        didSet {
            self.mainButton.setTitle(self.buttonTitle, for: .normal)
        }
    }
   
    // MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadFromNib()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.loadFromNib()
    }
    
}
