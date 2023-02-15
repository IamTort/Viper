//  CountriesInteractorOutputProtocol.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол интерактора по исходящим данным для экрана со странами
protocol CountriesInteractorOutputProtocol: AnyObject {
    func countriesCount() -> Int?
    func makeCountry(index: Int) -> Country?
    func fetchCountries()
}
