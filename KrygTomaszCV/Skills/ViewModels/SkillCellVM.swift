//
//  SkillCellVM.swift
//  KrygTomaszCV
//
//  Created by Kryg Tomasz on 28.06.2018.
//  Copyright © 2018 Kryg Tomasz. All rights reserved.
//

import Foundation

protocol SkillCellVM {
    var skillName: String { get }
    var knowledgePercent: Double { get }
    var lackPercent: Double { get }
    var canAnimate: Bool { get set }
    init(using skill: Skill?)
}
