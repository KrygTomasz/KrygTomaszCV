//
//  MenuVC.swift
//  KrygTomaszCV
//
//  Created by Kryg Tomasz on 27.06.2018.
//  Copyright © 2018 Kryg Tomasz. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            let cellNib = UINib(nibName: "MenuCVCell", bundle: nil)
            collectionView.register(cellNib, forCellWithReuseIdentifier: "MenuCVCell")
            collectionView.delegate = self
            collectionView.dataSource = self
        }
    }
    
    let menuVM: MenuVM = MenuVMImpl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareNavigationBar(withTitle: "appOwner".localize())
        self.view.setGradientColor(topColor: .secondaryColor, bottomColor: .mainColor)
    }

}

extension MenuVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return menuVM.numberOfSections
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuVM.numberOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let menuCVCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCVCell", for: indexPath) as? MenuCVCell else { return UICollectionViewCell() }
        let menuCellVM = menuVM.getCellVM(for: indexPath.row)
        menuCVCell.prepare(using: menuCellVM)
        return menuCVCell
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        guard let menuCVCell = cell as? MenuCVCell else { return }
        menuCVCell.containerView.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        UIView.animate(withDuration: 0.3, delay: (Double(indexPath.item)/16.0), options: .curveEaseOut, animations: {
            menuCVCell.containerView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let skillsVC = SkillsVC.getInstance()
        navigationController?.pushViewController(skillsVC, animated: true)
    }
    
}

extension MenuVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionHeight = collectionView.bounds.height
        let collectionWidth = collectionView.bounds.width
        return CGSize(width: collectionWidth/2, height: collectionHeight/3)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
}
