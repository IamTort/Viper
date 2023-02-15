//
//  CountriesInteractorInputProtocol.swift
//  Viper
//
//  Created by angelina on 15.02.2023.
//

import Foundation

/// Протокол интерактора экрана стран
protocol CountriesInteractorInputProtocol {
    func fetchData() -> [Country]
}
