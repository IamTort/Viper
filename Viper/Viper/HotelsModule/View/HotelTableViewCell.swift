//
//  HotelTableViewCell.swift
//  Viper
//
//  Created by angelina on 14.02.2023.
//

import UIKit

/// Ячейка отеля
final class HotelTableViewCell: UITableViewCell {
    
    // MARK: - Private Visual Components
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = .systemFont(ofSize: 17)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.black
        label.textAlignment = .natural
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let hotelImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let rateView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.backgroundColor = UIColor.magenta
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let rateLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let boxView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderColor = UIColor.gray.cgColor
        view.layer.borderWidth = 3
        view.layer.cornerRadius = 20
        return view
    }()
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = UITableViewCell.SelectionStyle.none
        setupUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError(S.error)
    }
    
    // MARK: - Public methods
    
    override func prepareForReuse() {
        super.prepareForReuse()
        hotelImageView.image = nil
        nameLabel.text = nil
        descriptionLabel.text = nil
        rateLabel.text = nil
        rateView.backgroundColor = nil
    }
    
    func setupData(hotel: Hotel) {
        hotelImageView.image = hotel.hotelImageName.image
        nameLabel.text = hotel.hotelName
        rateLabel.text = String(hotel.rate)
        descriptionLabel.text = hotel.description
    }
    
    // MARK: - Private methods
    
    private func setupUI() {
        contentView.backgroundColor = .clear
        contentView.addSubview(boxView)
        boxView.addSubview(nameLabel)
        boxView.addSubview(descriptionLabel)
        boxView.addSubview(hotelImageView)
        hotelImageView.addSubview(rateView)
        rateView.addSubview(rateLabel)
        createConstraints()
    }
    
    private func createConstraints() {
        NSLayoutConstraint.activate([
            boxView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            boxView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            boxView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            boxView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            boxView.heightAnchor.constraint(equalToConstant: hotelImageView.bounds.height + 20),
            
            hotelImageView.topAnchor.constraint(equalTo: boxView.topAnchor, constant: 20),
            hotelImageView.leadingAnchor.constraint(equalTo: boxView.leadingAnchor, constant: 20),
            hotelImageView.bottomAnchor.constraint(equalTo: boxView.bottomAnchor, constant: -20),
            hotelImageView.widthAnchor.constraint(equalTo: hotelImageView.heightAnchor, multiplier: 0.7),
            
            nameLabel.topAnchor.constraint(equalTo: boxView.topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: hotelImageView.trailingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: boxView.trailingAnchor, constant: -20),
            
            descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 0),
            descriptionLabel.leadingAnchor.constraint(equalTo: hotelImageView.trailingAnchor, constant: 20),
            descriptionLabel.bottomAnchor.constraint(equalTo: boxView.bottomAnchor, constant: -15),
            descriptionLabel.trailingAnchor.constraint(equalTo: boxView.trailingAnchor, constant: -10),
            
            rateView.leadingAnchor.constraint(equalTo: hotelImageView.leadingAnchor, constant: -10),
            rateView.topAnchor.constraint(equalTo: hotelImageView.topAnchor, constant: 12),
            rateView.widthAnchor.constraint(equalToConstant: 35),
            rateView.heightAnchor.constraint(equalTo: rateView.widthAnchor, multiplier: 0.6),
            
            rateLabel.centerYAnchor.constraint(equalTo: rateView.centerYAnchor, constant: 0),
            rateLabel.centerXAnchor.constraint(equalTo: rateView.centerXAnchor, constant: 0),
            rateLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
