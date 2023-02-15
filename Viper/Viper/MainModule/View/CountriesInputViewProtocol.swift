//
//  CountriesInputViewProtocol.swift
//  Viper
//
//  Created by angelina on 15.02.2023.
//

import Foundation

/// Протокол экрана стран
protocol CountriesInputViewProtocol: AnyObject  {
    var didTapOnCountry: Int? { get set }
}
