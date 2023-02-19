//
//  NetworkServiceProtocol.swift
//  Viper
//
//  Created by angelina on 19.02.2023.
//

import Foundation

/// Протокол для сервиса получения данных с сети
protocol NetworkServiceProtocol {
    func fetchCountries(completion: @escaping ([Country]) -> Void)
}
