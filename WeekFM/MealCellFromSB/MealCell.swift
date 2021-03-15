//
//  MealCell.swift
//  WeekFM
//
//  Created by Оля on 24.02.2021.
//

import UIKit
import SnapKit
/*
class MealCell: UITableViewCell {
    // MARK: Identifier
    static let reuseIdentifier = "MealCellIdentifier"
    
    // MARK: VAriables
    private(set) var edgeInsets = UIEdgeInsets(all:20) {
        didSet {
            self.needsUpdateConstraints()
        }
    }
    private var cornerRadius: CGFloat = 16
    private let priorityOffSet: CGFloat = 20
    
    // MARK: GUI Variables
    private lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        
        return view
    }()
    
    private lazy var foodFotoImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleToFill
        
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        label.textColor = .black
        
        
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        label.lineBreakMode = .byWordWrapping
        label.textColor = .gray
        label.textAlignment = .left
        label.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        
        return label
    }()
    
    
    // MARK: Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.initView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initView() {
        self.contentView.addSubview(self.containerView)
        self.containerView.addSubview(self.titleLabel)
        self.containerView.addSubview(self.descriptionLabel)
        self.containerView.addSubview(self.foodFotoImage)
        
        self.setupCellStyle()
        self.updateConstraints()
    }
    
    // MARK: Methods
    private func setupCellStyle() {
        self.containerView.layer.cornerRadius = self.cornerRadius
        self.containerView.layer.borderWidth = 1
        self.containerView.layer.borderColor = UIColor(named: "SecondaryButton")?.cgColor
    }
     
    // MARK: Constraints
    override func updateConstraints() {
        self.containerView.snp.updateConstraints { (make) in
            make.centerX.centerY.equalToSuperview()
        }
        
        self.foodFotoImage.snp.updateConstraints { (make) in
            make.top.equalTo(self.containerView.snp.top).inset(self.edgeInsets)
            make.width.equalTo(50)
        }
        
        self.titleLabel.snp.updateConstraints { (make) in
            make.top.equalToSuperview().inset(self.edgeInsets)
            make.left.equalTo(self.foodFotoImage.snp.right).offset(self.priorityOffSet)
        }
        
        self.descriptionLabel.snp.updateConstraints { (make) in
            make.top.equalTo(self.titleLabel.snp.bottom).offset(self.priorityOffSet)
            make.left.equalTo(self.foodFotoImage.snp.right).offset(self.priorityOffSet)
            make.right.equalToSuperview().offset(self.priorityOffSet)
            make.bottom.equalToSuperview()
        }
        super.updateConstraints()
    }
    
    func set(title: String, description: String, image: UIImage) {
        self.titleLabel.text = title
        self.descriptionLabel.text = description
        self.foodFotoImage.image = image
        
        self.setNeedsUpdateConstraints()
    }
}
*/
