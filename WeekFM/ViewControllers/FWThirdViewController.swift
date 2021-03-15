//
//  FWThirdViewController.swift
//  WeekFM
//
//  Created by Оля on 28.01.2021.
//

import UIKit

class FWThirdViewController: UIViewController {
    
    // MARK: Outlets 
    @IBOutlet weak var succesRegistrationLabel: UILabel!
    @IBOutlet weak var greetingNameLabel: UILabel!
    @IBOutlet weak var greetingText: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    // MARK: Properties
    private var username: String?
    private var password: String?
    
    var text: String?
    var registeringName: String?
    var textName: String?
    
    // MARK: - Life cicle
    override func viewDidLoad() {
        self.greetingNameLabel.text = self.textName
        self.succesRegistrationLabel.text = self.text
        self.greetingNameLabel.text = self.greetingNameLabel.text
    }
    
    // MARK: Methods
    func set(for userObject: UserProfile) {
        username = userObject.name
        password = userObject.password
        
        Swift.debugPrint()
    }
    
    // MARK: - IB Actions
    @IBAction func startFMButton(_ sender: Any) {
        self.performSegue(withIdentifier: "four_segue", sender: nil)
    }
}
