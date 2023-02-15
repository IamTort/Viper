// RouterProtocol.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол роутера
protocol RouterProtocol: RouterMainProtocol {
    func initialViewController()
    func showHotels(id: Int, country: String)
    func popToRoot()
}
