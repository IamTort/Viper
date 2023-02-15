// AssemblyBuilder.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Сборщик модулей
final class AssemblyBuilder: AssemblyBuilderProtocol {
    // MARK: - Public methods

    func makeMainModule(router: RouterProtocol) -> UIViewController {
        let view = CountriesViewController()
        let interactor = CountriesInteractor()
        let presenter = CountriesPresenter(view: view, interactor: interactor, router: router)
        view.presenter = presenter
        return view
    }

    func makeHotelsModule(id: Int, country: String, router: RouterProtocol) -> UIViewController {
        let view = HotelsViewController()
        let interactor = HotelsInteractor()
        let presenter = HotelsPresenter(view: view, interactor: interactor, id: id, country: country)
        view.presenter = presenter
        return view
    }
}
