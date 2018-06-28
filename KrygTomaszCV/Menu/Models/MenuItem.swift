//
//  MenuItem.swift
//  KrygTomaszCV
//
//  Created by Kryg Tomasz on 28.06.2018.
//  Copyright © 2018 Kryg Tomasz. All rights reserved.
//

import UIKit

class MenuItem {
    
    let type: MenuItemType
    var image: UIImage?
    var title: String?
    
    init(type: MenuItemType) {
        self.type = type
        switch type {
        case .aboutMe:
            image = #imageLiteral(resourceName: "personIcon")
            title = "aboutMe".localize()
        case .education:
            image = #imageLiteral(resourceName: "educationIcon")
            title = "education".localize()
        case .hobby:
            image = #imageLiteral(resourceName: "hobbyIcon")
            title = "interests".localize()
        case .job:
            image = #imageLiteral(resourceName: "jobIcon")
            title = "experience".localize()
        case .skills:
            image = #imageLiteral(resourceName: "skillsIcon")
            title = "skills".localize()
        default:
            image = nil
            title = ""
        }
    }
    
}
