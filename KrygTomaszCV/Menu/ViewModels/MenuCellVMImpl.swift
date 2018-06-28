//
//  MenuCellVMImpl.swift
//  KrygTomaszCV
//
//  Created by Kryg Tomasz on 28.06.2018.
//  Copyright © 2018 Kryg Tomasz. All rights reserved.
//

import UIKit

class MenuCellVMImpl: MenuCellVM {
    
    private var menuItem: MenuItem?
    var image: UIImage? {
        return menuItem?.image
    }
    var title: String? {
        return menuItem?.title
    }
    
    required init(using menuItem: MenuItem?) {
        self.menuItem = menuItem
    }
    
}
