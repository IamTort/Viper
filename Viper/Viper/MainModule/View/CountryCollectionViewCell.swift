// CountryCollectionViewCell.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Ячейка коллекции страны
final class CountryCollectionViewCell: UICollectionViewCell {
    // MARK: - Private Visual Components

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 17)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let countryImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError(S.error)
    }

    // MARK: - Public methods

    func configureCell(_ country: Country?) {
        nameLabel.text = country?.name
        countryImageView.image = UIImage(asset: country?.imageName ?? I.dish)
    }

    // MARK: - Private methods

    private func setupUI() {
        contentView.addSubview(countryImageView)
        countryImageView.addSubview(nameLabel)
        setupConstraints()
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            countryImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            countryImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            countryImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            countryImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),

            nameLabel.bottomAnchor.constraint(equalTo: countryImageView.bottomAnchor, constant: -10),
            nameLabel.centerXAnchor.constraint(equalTo: countryImageView.centerXAnchor)
        ])
    }
}
