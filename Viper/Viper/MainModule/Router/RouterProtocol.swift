// RouterProtocol.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол роутера экрана стран
protocol RouterProtocol: RouterMainProtocol, AnyObject {
    func initialViewController()
    func showHotels(id: Int, country: String)
}
