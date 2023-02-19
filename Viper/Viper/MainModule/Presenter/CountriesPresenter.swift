// CountriesPresenter.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Презентер экрана со странами
final class CountriesPresenter: CountriesViewOutputProtocol, CountriesInteractorOutputProtocol {
    // MARK: - Public property

    weak var view: CountriesInputViewProtocol?
    var router: RouterProtocol?
    var interactor: CountriesInteractorInputProtocol?

    // MARK: - Initializers

    init(view: CountriesInputViewProtocol, router: RouterProtocol?) {
        self.view = view
        self.router = router
    }

    // MARK: - Public methods
    
    func goHotelsScreen() {
        guard let index = view?.didTapOnCountry,
        let interactor = interactor else { return }
        router?.showHotels(id: interactor.countries[index].id, country: interactor.countries[index].name)
    }
    
    func updateView() {
        view?.updateTableView()
    }
    
    func countriesCount() -> Int? {
        interactor?.countries.count
    }
    
    func makeCountry(index: Int) -> Country? {
        interactor?.countries[index]
    }

    func fetchCountries() {
        guard let interactor = interactor else { return }
        interactor.fetchData()
    }
}
