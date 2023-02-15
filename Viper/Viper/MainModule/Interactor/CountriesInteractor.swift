// CountriesInteractor.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Получение данных для экрана стран
final class CountriesInteractor: CountriesInteractorInputProtocol {
    
    // MARK: - Public property
    
    weak var presenter: CountriesInteractorOutputProtocol?
    var networkService: NetworkService?
    var countries: [Country] = []
    
    // MARK: - Initializer
    
    init(networkService: NetworkService?, presenter: CountriesInteractorOutputProtocol?) {
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
