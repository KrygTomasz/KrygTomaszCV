//
//  MenuVM.swift
//  KrygTomaszCV
//
//  Created by Kryg Tomasz on 28.06.2018.
//  Copyright © 2018 Kryg Tomasz. All rights reserved.
//

import Foundation

protocol MenuVM {
    var numberOfSections: Int { get }
    var numberOfItems: Int { get }
    func getCellVM(for index: Int) -> MenuCellVM?
}
