//
//  SkillCVCell.swift
//  KrygTomaszCV
//
//  Created by Kryg Tomasz on 27.06.2018.
//  Copyright © 2018 Kryg Tomasz. All rights reserved.
//

import UIKit
import Charts

class SkillCVCell: UICollectionViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var pieChartView: PieChartView! {
        didSet {
            pieChartView.holeRadiusPercent = 0.8
            pieChartView.drawHoleEnabled = true
            pieChartView.holeColor = UIColor.clear
            pieChartView.drawEntryLabelsEnabled = false
            pieChartView.legend.enabled = false
            pieChartView.isUserInteractionEnabled = false
            pieChartView.highlightPerTapEnabled = false
            pieChartView.chartDescription?.text = ""
        }
    }
    
    var skillCellVM: SkillCellVM? {
        didSet {
            setPieChart()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func prepare(using skillCellVM: SkillCellVM?) {
        self.skillCellVM = skillCellVM
    }

    func setPieChart() {
        guard let vm = skillCellVM else { return }
        let centerText = NSMutableAttributedString(string: vm.skillName,
                                                   attributes: [NSAttributedStringKey.foregroundColor: UIColor.white,
                                                                NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 15)])
        pieChartView.centerAttributedText = centerText
        let skillEntry = PieChartDataEntry(value: vm.knowledgePercent, label: vm.skillName, data: vm.skillName as AnyObject)
        let lackSkillEntry = PieChartDataEntry(value: vm.lackPercent, label: vm.skillName, data: vm.skillName as AnyObject)
        let dataEntries = [skillEntry, lackSkillEntry]
        let pieChartDataSet = PieChartDataSet(values: dataEntries, label: "")
        pieChartDataSet.colors = [.white, .clear]
        pieChartDataSet.drawValuesEnabled = false
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        pieChartView.data = pieChartData
        if vm.canAnimate {
            pieChartView.animate(yAxisDuration: 1.5, easingOption: .easeInOutQuint)
        }
    }
    
}
