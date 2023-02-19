// CountriesPresenterOutputProtocol.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол  презентера экрана стран
protocol CountriesViewOutputProtocol: AnyObject {
    func goHotelsScreen()
    func countriesCount() -> Int?
    func makeCountry(index: Int) -> Country?
    func fetchCountries()
}
