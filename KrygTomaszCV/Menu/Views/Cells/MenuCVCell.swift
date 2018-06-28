//
//  MenuCVCell.swift
//  KrygTomaszCV
//
//  Created by Kryg Tomasz on 27.06.2018.
//  Copyright © 2018 Kryg Tomasz. All rights reserved.
//

import UIKit

class MenuCVCell: UICollectionViewCell {

    @IBOutlet weak var containerView: UIView! {
        didSet {
            containerView.layer.cornerRadius = GlobalValues.mediumCornerRadius
            containerView.layer.borderWidth = 1.0
            containerView.layer.borderColor = UIColor.white.cgColor
            containerView.backgroundColor = UIColor.clear
        }
    }
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
//            let rand = Int(arc4random_uniform(5))
//            if rand == 0 {
//                imageView.image = #imageLiteral(resourceName: "educationIcon").withRenderingMode(.alwaysTemplate)
//            } else if rand == 1 {
//                imageView.image = #imageLiteral(resourceName: "jobIcon").withRenderingMode(.alwaysTemplate)
//            } else if rand == 2 {
//                imageView.image = #imageLiteral(resourceName: "hobbyIcon").withRenderingMode(.alwaysTemplate)
//            } else if rand == 3 {
//                imageView.image = #imageLiteral(resourceName: "skillsIcon").withRenderingMode(.alwaysTemplate)
//            } else if rand == 4 {
//                imageView.image = #imageLiteral(resourceName: "personIcon").withRenderingMode(.alwaysTemplate)
//            }
            imageView.tintColor = UIColor.white
        }
    }
    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.textColor = UIColor.white
        }
    }
    
    var menuCellVM: MenuCellVM? {
        didSet {
            imageView.image = menuCellVM?.image?.withRenderingMode(.alwaysTemplate)
            titleLabel.text = menuCellVM?.title
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func prepare(using menuCellVM: MenuCellVM?) {
        self.menuCellVM = menuCellVM
    }

}
