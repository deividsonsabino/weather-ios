//
//  HourlyForecastCollectionViewCell.swift
//  weather
//
//  Created by Deivao on 24/01/24.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell {
    static let indentifier: String = "HourlyForecast"
    
    private lazy var hourLbael: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var tempLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var weatherIcon: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var hourlySatckView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [hourLbael,weatherIcon,tempLabel])
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        stackView.layer.borderWidth = 1
        stackView.layer.borderColor = UIColor.white.cgColor
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.layer.cornerRadius = 20
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadData(time: String?, icon: UIImage?, temp: String?) {
        hourLbael.text = time
        weatherIcon.image = icon
        tempLabel.text = temp
    }
    
    private func setupView() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        contentView.addSubview(hourlySatckView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            hourlySatckView.topAnchor.constraint(equalTo: contentView.topAnchor),
            hourlySatckView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            hourlySatckView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            hourlySatckView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            weatherIcon.heightAnchor.constraint(equalToConstant: 33),
        ])
    }
}
