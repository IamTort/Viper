// Router.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Роутер
final class Router: RouterProtocol {
    // MARK: - Public property

    var navigationController: UINavigationController?
    var assemblyBuilder: AssemblyBuilderProtocol?

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
        guard let hotelsViewController = assemblyBuilder?.makeHotelsModule(id: id, country: country, router: self),
              let navigationController = navigationController else { return }
        navigationController.pushViewController(hotelsViewController, animated: true)
    }

    func popToRoot() {
        if let navigationController = navigationController {
            navigationController.popToRootViewController(animated: true)
        }
    }
}
