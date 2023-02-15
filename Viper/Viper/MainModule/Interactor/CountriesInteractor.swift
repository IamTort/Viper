// CountriesInteractor.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Получение данных для экрана стран
final class CountriesInteractor: CountriesInteractorInputProtocol {
    
    // MARK: - Public property
    
    var networkService: NetworkService?
    var countries: [Country] = []
    var presenter: CountriesPresenterOutputProtocol?
    
    // MARK: - Initializer
    
    init(networkService: NetworkService?, presenter: CountriesPresenterOutputProtocol?) {
        self.networkService = networkService
        self.presenter = presenter
    }
    
    // MARK: - Public methods

    func fetchData() {
        networkService?.fetchCountries(completion: { [weak self] countries in
            guard let self = self else { return }
            self.countries = countries
            self.presenter?.updateView()
        })
    }
}
