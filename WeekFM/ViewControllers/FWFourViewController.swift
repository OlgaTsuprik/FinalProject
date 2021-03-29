//
//  FWFourViewController.swift
//  WeekFM
//
//  Created by Оля on 29.01.2021.
//

import UIKit
import MBCircularProgressBar


class FWFourViewController: UIViewController {
    
    // MARK: Variables
    private var daysOfFM: [String] = ["1 день", "2 день", "3 день", "4 день", "5 день", "6 день", "7 день"]
    let cellName = "CellIdentifier"
    var currentWeightMeaning: Int = 0
    var progress: Float = 0
    
    // MARK: Outlets
    @IBOutlet weak var currentWeight: UILabel!
    @IBOutlet weak var currentWeightText: UITextField!
    @IBOutlet weak var progressiew: MBCircularProgressBarView!
    @IBOutlet weak var startWeightLabel: UILabel!
    @IBOutlet weak var startWeightText: UITextField!
    @IBOutlet weak var wantedWeightLabel: UILabel!
    @IBOutlet weak var wantedWeightText: UITextField!
    
    // MARK: IB Actions
    @IBAction func markProgress(_ sender: Any) {
        self.progress = setProgress()
        UIView.animate(withDuration: 1.0) {
            self.progressiew.value = CGFloat(self.progress)
        }
    }
    
    // MARK: Life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.progress = setProgress()
        self.progressiew.value = 0
        print("1")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 10.0) {
            
            self.progressiew.value = CGFloat(self.progress)
            print("2")
        }
    }
    
    // MARK: Methods
    func setProgress() -> Float {
        //let value = Float(currentWeightText.text ?? "0") ?? 0
        //let value = (Float(currentWeightText.text ?? "0") - Float(wantedWeightText.text ?? "0")) / (Float(startWeightText.text ?? "0") - Float(wantedWeightText.text ?? "0")) * 100
        let value1 = Float(currentWeightText.text ?? "0") ?? 0
        let value2 = Float(wantedWeightText.text ?? "0") ?? 0
        let value3 = Float(startWeightText.text ?? "0") ?? 0
        let result: Float
        if value2 < value1 {
            result = (1 - (value1 - value2) / (value3 - value2)) * 100 }
        else {
            result = 0
        }
        return result
    }
    
}
