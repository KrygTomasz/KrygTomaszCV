//
//  SkillsVC.swift
//  KrygTomaszCV
//
//  Created by Kryg Tomasz on 27.06.2018.
//  Copyright © 2018 Kryg Tomasz. All rights reserved.
//

import UIKit

class SkillsVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            let cellNib = UINib(nibName: "SkillCVCell", bundle: nil)
            collectionView.register(cellNib, forCellWithReuseIdentifier: "SkillCVCell")
            collectionView.delegate = self
            collectionView.dataSource = self
        }
    }
    
    var skillsVM: SkillsVM = SkillsVMImpl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareNavigationBar(withTitle: "skills".localize())
        self.view.setGradientColor(topColor: .secondaryColor, bottomColor: .mainColor)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skillsVM.canAnimate = false
    }
    
    static func getInstance() -> SkillsVC {
        let vc = SkillsVC(nibName: "SkillsVC", bundle: nil)
        return vc
    }

}

extension SkillsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return skillsVM.numberOfSections
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return skillsVM.numberOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let skillCVCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SkillCVCell", for: indexPath) as? SkillCVCell else { return UICollectionViewCell() }
        let skillCellVM = skillsVM.getCellVM(for: indexPath.row)
        skillCVCell.prepare(using: skillCellVM)
        return skillCVCell
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        guard let skillCVCell = cell as? SkillCVCell else { return }
    }
    
}

extension SkillsVC: UICollectionViewDelegateFlowLayout {
    
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
