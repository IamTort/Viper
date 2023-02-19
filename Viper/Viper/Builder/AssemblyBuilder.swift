// AssemblyBuilder.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Сборщик модулей
final class AssemblyBuilder: AssemblyBuilderProtocol {
    // MARK: - Public methods

    func makeMainModule(router: RouterProtocol) -> UIViewController {
        let view = CountriesViewController()
        let networkService = NetworkService()
        let presenter = CountriesPresenter(view: view, router: router)
        let interactor = CountriesInteractor(networkService: networkService, presenter: presenter)
        presenter.interactor = interactor
        view.presenter = presenter
        return view
    }

    func makeHotelsModule(id: Int, country: String, router: HotelRouterInputProtocol) -> UIViewController {
        let view = HotelsViewController()
        let interactor = HotelsInteractor()
        let presenter = HotelsPresenter(view: view, interactor: interactor, id: id, country: country)
        view.presenter = presenter
        interactor.presenter = presenter
        return view
    }
}
