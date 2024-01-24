//
//  HourlyForecastCollectionViewCell.swift
//  weather
//
//  Created by Deivao on 24/01/24.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell {
    static let indentifier: String = "HourlyForecast"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = .green
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
