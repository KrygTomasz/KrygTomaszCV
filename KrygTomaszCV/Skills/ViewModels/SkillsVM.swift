//
//  SkillsVM.swift
//  KrygTomaszCV
//
//  Created by Kryg Tomasz on 28.06.2018.
//  Copyright © 2018 Kryg Tomasz. All rights reserved.
//

import Foundation

protocol SkillsVM {
    var numberOfSections: Int { get }
    var numberOfItems: Int { get }
    var canAnimate: Bool { get set }
    func getCellVM(for index: Int) -> SkillCellVM?
}
