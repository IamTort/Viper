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
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // MARK: - Public property
    
    var presenter: CountriesViewOutputProtocol?
    var didTapOnCountry: Int?

    // MARK: - Public methods

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func updateTableView() {
        collectionView.reloadData()
    }
    
    // MARK: - Private methods

    private func setupUI() {
        view.backgroundColor = .magenta
        addSubview()
        collectionView.dataSource = self
        collectionView.delegate = self
        configureTitle()
        setupConstraints()
        presenter?.fetchCountries()
    }
    
    private func addSubview() {
        view.addSubview(nameLabel)
        view.addSubview(collectionView)
    }
    
    private func configureTitle() {
        nameLabel.text = S.bestToursTitle
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

// MARK: - UICollectionViewDataSource

extension CountriesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        presenter?.countriesCount() ?? 0
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: S.collectionCellIdentifier,
            for: indexPath
        ) as? CountryCollectionViewCell else { return UICollectionViewCell() }
        let data = presenter?.makeCountry(index: indexPath.row)
        cell.configureCell(data)
        return cell
    }
}

// MARK: - UICollectionViewDelegate

extension CountriesViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        didTapOnCountry = indexPath.row
        presenter?.goHotelsScreen()
    }
}
