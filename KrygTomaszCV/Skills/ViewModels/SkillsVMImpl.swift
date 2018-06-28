//
//  SkillsVMImpl.swift
//  KrygTomaszCV
//
//  Created by Kryg Tomasz on 28.06.2018.
//  Copyright © 2018 Kryg Tomasz. All rights reserved.
//

import Foundation

class SkillsVMImpl: SkillsVM {
    
    private var skills: [Skill] = [
        Skill(name: "ios".localize(), percent: 1.0),
        Skill(name: "macos".localize(), percent: 0.8),
        Skill(name: "xcode".localize(), percent: 0.8),
        Skill(name: "sourcetree".localize(), percent: 0.8),
        Skill(name: "swift".localize(), percent: 0.8),
        Skill(name: "objective-c".localize(), percent: 0.4),
        Skill(name: "firebase".localize(), percent: 0.6),
        Skill(name: "json".localize(), percent: 0.8),
        Skill(name: "scrum".localize(), percent: 0.8)
    ]
    var numberOfSections: Int {
        return 1
    }
    var numberOfItems: Int {
        return skills.count
    }
    var canAnimate: Bool = true
    
    func getCellVM(for index: Int) -> SkillCellVM? {
        if index < numberOfItems {
            let skill = skills[index]
            let skillCellVM = SkillCellVMImpl(using: skill)
            skillCellVM.canAnimate = canAnimate
            return skillCellVM
        } else {
            return nil
        }
    }
    
}
