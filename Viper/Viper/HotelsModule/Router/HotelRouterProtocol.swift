//  HotelRouterProtocol.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Протокол входящих значений роутера экрана отелей
protocol HotelRouterInputProtocol {
    func pushViewController(index: Int, country: String, navigationViewController: UINavigationController)
}
