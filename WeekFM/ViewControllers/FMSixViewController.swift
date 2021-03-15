//
//  FMSixViewController.swift
//  WeekFM
//
//  Created by Оля on 29.01.2021.
//

import youtube_ios_player_helper
import UIKit

class FMSixViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet var playerView: YTPlayerView!
    @IBOutlet weak var recomendationLabel: UILabel! {
        didSet {
            self.recomendationLabel.text = "Рекомендации: прием пищи за 1 час до тренировки и через 2 часа после. Ежедневно выполняем кардио не менее 2 км."
            self.recomendationLabel.lineBreakMode = .byWordWrapping
            self.recomendationLabel.font = .boldSystemFont(ofSize: 19)
            self.recomendationLabel.numberOfLines = 0
        }
    }
    
    // MARK: Life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.playerView.load(withVideoId: "jpizoUy4K9s")
        //playerView.load(withVideoId: "4kM-UC0q0P4&t")
    }
    
}
