//
//  HotelsInteractorProtocol.swift
//  Viper
//
//  Created by angelina on 15.02.2023.
//

import Foundation

/// Протокол интерактора отелей
protocol HotelsInteractorProtocol {
    func fetchHotels(id: Int) -> [Hotel]?
}
