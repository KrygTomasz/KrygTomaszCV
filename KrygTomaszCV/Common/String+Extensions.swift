//
//  String+Extensions.swift
//  KrygTomaszCV
//
//  Created by Kryg Tomasz on 28.06.2018.
//  Copyright © 2018 Kryg Tomasz. All rights reserved.
//

import Foundation

extension String {
    
    func localize() -> String {
        return NSLocalizedString(self, comment: "")
    }
    
}
