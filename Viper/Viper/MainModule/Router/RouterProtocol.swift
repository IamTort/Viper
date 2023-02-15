//
//  RouterProtocol.swift
//  Viper
//
//  Created by angelina on 15.02.2023.
//

import Foundation

/// Протокол роутера
protocol RouterProtocol: RouterMainProtocol {
    func initialViewController()
    func showHotels(id: Int, country: String)
    func popToRoot()
}
