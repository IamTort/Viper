// CountriesViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Контроллер экрана стран
final class CountriesViewController: UIViewController, CountriesInputViewProtocol {
    // MARK: - Private Visual Components

    private var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 30, bottom: 10, right: 30)
        layout.itemSize = CGSize(width: (UIScreen.main.bounds.width - 90) / 2, height: 140)
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 1
        layout.minimumLineSpacing = 25
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(CountryCollectionViewCell.self, forCellWithReuseIdentifier: S.collectionCellIdentifier)
        return collectionView
    }()

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // MARK: - Public property

    var presenter: CountriesPresenterOutputProtocol?
    var didTapOnCountry: Int?

    // MARK: - Public methods

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private methods

    private func setupUI() {
        view.addSubview(nameLabel)
        view.addSubview(collectionView)
        collectionView.dataSource = self
        collectionView.delegate = self
        nameLabel.text = S.bestToursTitle
        view.backgroundColor = .magenta
        setupConstraints()
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

// MARK: - UICollectionViewDataSource, UICollectionViewDelegate

extension CountriesViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        presenter?.countries.count ?? 0
    }

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: S.collectionCellIdentifier,
            for: indexPath
        ) as? CountryCollectionViewCell else { return UICollectionViewCell() }
        let data = presenter?.countries[indexPath.item]
        cell.configureCell(data)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        didTapOnCountry = indexPath.row
        presenter?.goHotelsScreen()
    }
}
