//  NetworkService.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Cервис по получению данных с сети
final class NetworkService: NetworkServiceProtocol {
    
    // MARK: - Private property
    
    private let countries = [
        Country(id: 1, imageName: I.bali, name: "Бали"),
        Country(id: 2, imageName: I.egypt, name: "Египет"),
        Country(id: 3, imageName: I.shrilanka, name: "Шри-Ланка"),
        Country(id: 4, imageName: I.vietnam, name: "Вьетнам"),
        Country(id: 5, imageName: I.tailand, name: "Тайланд"),
        Country(id: 3, imageName: I.shrilanka, name: "Шри-Ланка"),
        Country(id: 4, imageName: I.vietnam, name: "Вьетнам"),
        Country(id: 5, imageName: I.tailand, name: "Тайланд")
    ]
    
    // MARK: - Public methods
    
    func fetchCountries(completion: @escaping ([Country]) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(self.countries)
        }
    }
}
