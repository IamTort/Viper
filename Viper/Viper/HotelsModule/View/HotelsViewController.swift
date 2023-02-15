// HotelsViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Экран отелей
final class HotelsViewController: UIViewController {
    // MARK: - Private Visual Components

    private var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.register(HotelTableViewCell.self, forCellReuseIdentifier: S.tableCellIdentifier)
        return tableView
    }()

    // MARK: - Public property

    var presenter: HotelsViewOutputProtocol?

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private methods

    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        configureTitle()
        createConstraint()
        fetchData()
    }
    
    private func configureTitle() {
        if let country = presenter?.country {
            navigationItem.title = "\(S.hotels)\(country)"
        }
    }

    private func createConstraint() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -25),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
        ])
    }
    
    private func fetchData() {
        presenter?.fetchHotels()
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension HotelsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter?.makeHotelsCount() ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: S.tableCellIdentifier,
            for: indexPath
        ) as? HotelTableViewCell,
              let hotel = presenter?.receiveHotel(index: indexPath.row) else { return UITableViewCell() }
        cell.configure(hotel: hotel)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}

// MARK: - HotelsViewInputProtocol

extension HotelsViewController: HotelsViewInputProtocol {
    func setData() {
        tableView.reloadData()
    }
}
