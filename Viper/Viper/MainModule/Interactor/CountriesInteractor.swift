//
//  CountriesInteractor.swift
//  Viper
//
//  Created by angelina on 14.02.2023.
//

import Foundation

/// Получение данных для экрана стран
final class CountriesInteractor: CountriesInteractorInputProtocol {
    
    // MARK: - Public methods
    
    func fetchData() -> [Country] {
        return [Country(id: 1, imageName: I.bali, name: "Бали"),
                Country(id: 2, imageName: I.egypt, name: "Египет"),
                Country(id: 3, imageName: I.shrilanka, name: "Шри-Ланка"),
                Country(id: 4, imageName: I.vietnam, name: "Вьетнам"),
                Country(id: 5, imageName: I.tailand, name: "Тайланд"),
                Country(id: 3, imageName: I.shrilanka, name: "Шри-Ланка"),
                Country(id: 4, imageName: I.vietnam, name: "Вьетнам"),
                Country(id: 5, imageName: I.tailand, name: "Тайланд")
        ]
    }
}
