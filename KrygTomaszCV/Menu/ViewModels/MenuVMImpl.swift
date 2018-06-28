//
//  MenuVMImpl.swift
//  KrygTomaszCV
//
//  Created by Kryg Tomasz on 28.06.2018.
//  Copyright © 2018 Kryg Tomasz. All rights reserved.
//

import Foundation

class MenuVMImpl: MenuVM {
    
    private var menuItems: [MenuItem] = [
        MenuItem(type: .aboutMe),
        MenuItem(type: .education),
        MenuItem(type: .job),
        MenuItem(type: .skills),
        MenuItem(type: .hobby)
    ]
    var numberOfSections: Int {
        return 1
    }
    var numberOfItems: Int {
        return menuItems.count
    }
    
    func getCellVM(for index: Int) -> MenuCellVM? {
        if index < numberOfItems {
            let menuItem = menuItems[index]
            return MenuCellVMImpl(using: menuItem)
        } else {
            return nil
        }
    }
    
}
