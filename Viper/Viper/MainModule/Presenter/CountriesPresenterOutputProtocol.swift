// CountriesPresenterOutputProtocol.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол  презентера экрана стран
protocol CountriesPresenterOutputProtocol: AnyObject {
    func goHotelsScreen()
    func updateView()
    func countriesCount() -> Int?
    func makeCountry(index: Int) -> Country?
    func fetchCountries()
}
