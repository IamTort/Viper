//
//  CountriesPresenterOutputProtocol.swift
//  Viper
//
//  Created by angelina on 15.02.2023.
//

import Foundation

/// Протокол  презентера экрана стран
protocol CountriesPresenterOutputProtocol {
    var countries: [Country] { get set }
    func goHotelsScreen()
}
