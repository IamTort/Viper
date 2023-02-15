// Router.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Роутер экрана стран
final class Router: RouterProtocol {
    // MARK: - Public property

    var navigationController: UINavigationController?
    var assemblyBuilder: AssemblyBuilderProtocol?

    // MARK: - Private property
    
    private let hotelRouter = HotelRouter()
    
    // MARK: - Initializer

    init(
        navigationController: UINavigationController,
        assemblyBuilder: AssemblyBuilderProtocol
    ) {
        self.navigationController = navigationController
        self.assemblyBuilder = assemblyBuilder
    }

    // MARK: - Public methods

    func initialViewController() {
        guard let navigationController = navigationController,
              let mainViewController = assemblyBuilder?.makeMainModule(router: self) else { return }
        navigationController.viewControllers = [mainViewController]
    }
    
    func showHotels(id: Int, country: String) {
        guard let navigationController = navigationController else { return }
        hotelRouter.pushViewController(index: id, country: country, navigationViewController: navigationController)
    }
}
