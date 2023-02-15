// CountriesPresenterOutputProtocol.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол  презентера экрана стран
protocol CountriesPresenterOutputProtocol {
    var countries: [Country] { get set }
    func goHotelsScreen()
}
