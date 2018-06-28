//
//  SkillCellVMImpl.swift
//  KrygTomaszCV
//
//  Created by Kryg Tomasz on 28.06.2018.
//  Copyright © 2018 Kryg Tomasz. All rights reserved.
//

import Foundation

class SkillCellVMImpl: SkillCellVM {
    
    private var skill: Skill?
    private let MAX_PERCENT: Double = 1.0
    var skillName: String {
        return skill?.name ?? ""
    }
    var knowledgePercent: Double {
        guard let percent = skill?.percent else { return 0.0 }
        return percent
    }
    var lackPercent: Double {
        guard let percent = skill?.percent else { return MAX_PERCENT }
        return MAX_PERCENT - percent
    }
    var canAnimate: Bool = true
    
    required init(using skill: Skill?) {
        self.skill = skill
    }
    
}
