// CountriesInteractorInputProtocol.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол интерактора экрана стран
protocol CountriesInteractorInputProtocol: AnyObject {
    var countries: [Country] { get set }
    func fetchData()
}
