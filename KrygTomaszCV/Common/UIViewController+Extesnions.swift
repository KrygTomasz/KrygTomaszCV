//
//  UIViewController+Extesnions.swift
//  KrygTomaszCV
//
//  Created by Kryg Tomasz on 27.06.2018.
//  Copyright © 2018 Kryg Tomasz. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func prepareNavigationBar(withTitle title: String) {
        navigationItem.title = title
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
    }
    
}
