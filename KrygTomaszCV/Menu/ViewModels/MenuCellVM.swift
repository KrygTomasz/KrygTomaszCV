//
//  MenuCellVM.swift
//  KrygTomaszCV
//
//  Created by Kryg Tomasz on 28.06.2018.
//  Copyright © 2018 Kryg Tomasz. All rights reserved.
//

import UIKit

protocol MenuCellVM {
    var image: UIImage? { get }
    var title: String? { get }
    init(using menuItem: MenuItem?)
}
