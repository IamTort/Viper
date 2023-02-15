// CountriesPresenter.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Презентер экрана со странами
final class CountriesPresenter: CountriesPresenterOutputProtocol {
    // MARK: - Public property

    var countries: [Country] = []

    // MARK: - Private property

    private weak var view: CountriesInputViewProtocol?
    private var router: RouterProtocol?
    private var interactor: CountriesInteractorInputProtocol?

    // MARK: - Initializers

    init(view: CountriesInputViewProtocol, interactor: CountriesInteractorInputProtocol, router: RouterProtocol?) {
        self.view = view
        self.interactor = interactor
        self.router = router
        fetchCountries()
    }

    // MARK: - Public methods

    func goHotelsScreen() {
        guard let index = view?.didTapOnCountry else { return }
        router?.showHotels(id: countries[index].id, country: countries[index].name)
    }

    // MARK: - Private methods

    private func fetchCountries() {
        guard let interactor = interactor else { return }
        countries = interactor.fetchData()
    }
}
