//
//  ViewController.swift
//  WeekFM
//
//  Created by Оля on 28.01.2021.
//

import UIKit
import Firebase

class FMFirstViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var nameText: UITextField! {
        didSet {
            self.nameText.placeholder = "Enter your name, please"
            self.nameText.textAlignment = .center
        }
    }
    @IBOutlet weak var passwordText: UITextField! {
        didSet {
            self.passwordText.placeholder = "Enter your password"
            self.passwordText.textAlignment = .center
            self.passwordText.isSecureTextEntry = true
        }
    }
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var enterWithoutRegistration: UIButton!
    @IBOutlet weak var registration: UIButton!
    
    // MARK: Life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
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
    
    @IBAction func loginTapped(_ sender: Any) {
        guard let email = self.nameText.text, let password = passwordText.text, email != "", password != ""  else {
            return self.showRegistrationAlert()
        }
        Firebase.Auth.auth().signIn(withEmail: email, password: password) { [weak self] (user, error) in
            if error != nil {
                self?.showRegistrationAlert()
                return
            }
            if user != nil {
                self?.performSegue(withIdentifier: "secondary_segue", sender: nil)
            }
        }
        
    }
    
    @IBAction func registrationTapped(_ sender: Any) {
        guard let email = self.nameText.text, let password = passwordText.text, email != "", password != ""  else {
            return self.showRegistrationAlert()
        }
        Firebase.Auth.auth().createUser(withEmail: email, password: password) { [weak self] (authResult, error) in
            if error == nil {
                if authResult != nil {
                    self?.performSegue(withIdentifier: "secondary_segue", sender: nil)
                }
            }
        }
    }
}
    

