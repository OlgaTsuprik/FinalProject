//
//  ViewController.swift
//  WeekFM
//
//  Created by Оля on 28.01.2021.
//

import UIKit

class FMFirstViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var nameText: UITextField! {
        didSet {
            self.nameText.placeholder = "Enter your name"
            self.nameText.textAlignment = .center
        }
    }
    @IBOutlet weak var passwordText: UITextField! {
        didSet {
            self.passwordText.placeholder = "Enter your password"
            self.passwordText.textAlignment = .center
        }
    }
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var enterWithoutRegistration: UIButton!
    @IBOutlet weak var registration: UIButton!
    
    // MARK: Life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: IB Actions
    @IBAction func showNextVC(_ sender: Any) {
        self.performSegue(withIdentifier: "secondary_segue", sender: nil)
    }
    
    func showRegistrationAlert() {
        print("not registered")
        let alertController = UIAlertController(title: "NOT REGISTERED", message: "Please, register", preferredStyle: .alert)
        self.present(alertController, animated: true, completion: nil)
        alertController.addAction(UIAlertAction(title: "OK", style: .destructive, handler: { (_) in
            print("Was cancelled")
        }))
    }
    
    // MARK: - Segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondary_segue",
           let destinationVC = segue.destination as? FWThirdViewController
           {
            print("move to third VC")
        }
        if segue.identifier == "third_segue",
           let destinationVC = segue.destination as? FWThirdViewController {
            print("вход по паролю")
            if self.nameText.text == "Olga", self.passwordText.text == "111"  {
                destinationVC.textName = nameText.text
            } else {
                self.showRegistrationAlert()
            }
        }
    }
}

