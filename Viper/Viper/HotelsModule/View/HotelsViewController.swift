// HotelsViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Экран отелей
final class HotelsViewController: UIViewController, HotelsViewProtocol {
    // MARK: - Private Visual Components

    private var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.register(HotelTableViewCell.self, forCellReuseIdentifier: S.tableCellIdentifier)
        return tableView
    }()

    // MARK: - Public property

    var presenter: HotelsPresenterProtocol?

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private methods

    private func setupUI() {
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        view.backgroundColor = .white
        if let country = presenter?.country {
            navigationItem.title = "Отели в \(country)"
        }
        createConstraint()
    }

    private func createConstraint() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -25),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
        ])
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension HotelsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter?.hotels.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: S.tableCellIdentifier,
            for: indexPath
        ) as? HotelTableViewCell,
            let hotel = presenter?.hotels[indexPath.row] else { return UITableViewCell() }
        cell.setupData(hotel: hotel)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        140
    }
}
