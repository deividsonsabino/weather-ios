//
//  DailyForecastTableViewCell.swift
//  weather
//
//  Created by Deivao on 24/01/24.
//

import UIKit

class DailyForecastTableViewCell: UITableViewCell {
    
    static let indetifier: String = "DailyForecast"
    
    private lazy var dailyLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TER"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .white
        return label
    }()
    
    private lazy var cloudIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "cloudIcon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var minTempLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "min 25°C"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    private lazy var maxTempLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "max 25°C"
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
        
    
    private lazy var dailyForecastStackView: UIStackView = {
       let stackView = UIStackView(arrangedSubviews: [dailyLabel,cloudIcon,minTempLabel,maxTempLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .clear
        stackView.axis = .horizontal
        stackView.spacing = 14
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
        return stackView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        selectionStyle = .none
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        contentView.addSubview(dailyForecastStackView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            dailyForecastStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            dailyForecastStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            dailyForecastStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            dailyForecastStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            cloudIcon.heightAnchor.constraint(equalToConstant: 21)
        ])
        
        NSLayoutConstraint.activate([
            dailyLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 50)
        ])
    }
    
}
