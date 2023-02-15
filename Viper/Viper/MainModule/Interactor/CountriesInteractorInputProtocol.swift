// CountriesInteractorInputProtocol.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол интерактора экрана стран
protocol CountriesInteractorInputProtocol {
    func fetchData() -> [Country]
}
