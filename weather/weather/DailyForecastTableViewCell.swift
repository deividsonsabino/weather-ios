//
//  DailyForecastTableViewCell.swift
//  weather
//
//  Created by Deivao on 24/01/24.
//

import UIKit

class DailyForecastTableViewCell: UITableViewCell {
    
    static let indetifier: String = "DailyForecast"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
