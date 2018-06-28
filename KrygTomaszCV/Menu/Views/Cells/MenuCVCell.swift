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
            imageView.image = #imageLiteral(resourceName: "personIcon").withRenderingMode(.alwaysTemplate)
            imageView.tintColor = UIColor.white
        }
    }
    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.textColor = UIColor.white
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
