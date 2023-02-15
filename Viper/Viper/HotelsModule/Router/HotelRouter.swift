//  HotelRouter.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Роутер экрана отелей
final class HotelRouter: HotelRouterInputProtocol {
    
    let assembly = AssemblyBuilder()
    
    // MARK: - Public Methods
    
    func pushViewController(index: Int, country: String, navigationViewController: UINavigationController) {
        let viewController = assembly.makeHotelsModule(id: index, country: country, router: self)
        navigationViewController.pushViewController(viewController, animated: true)
    }
}
