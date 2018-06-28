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
            pieChartView.holeRadiusPercent = 0.9
            pieChartView.drawHoleEnabled = true
            pieChartView.holeColor = UIColor.clear
            pieChartView.drawEntryLabelsEnabled = false
            pieChartView.legend.enabled = false
            pieChartView.highlightPerTapEnabled = false
            pieChartView.chartDescription?.text = ""
            pieChartView.centerText = "Swift"
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setPieChart() {
        let rand = Int(arc4random_uniform(5) + 1)
        let skillEntry = PieChartDataEntry(value: Double(rand), label: "Swift", data: "Swift" as AnyObject)
        let lackSkillEntry = PieChartDataEntry(value: Double(5-rand), label: "Swift", data: "Swift" as AnyObject)
        let dataEntries = [skillEntry, lackSkillEntry]
        let pieChartDataSet = PieChartDataSet(values: dataEntries, label: "")
        pieChartDataSet.colors = [.white, .clear]
        pieChartDataSet.drawValuesEnabled = false
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        pieChartView.data = pieChartData
        pieChartView.animate(yAxisDuration: 1.5, easingOption: .easeInOutQuint)
    }
    
}
