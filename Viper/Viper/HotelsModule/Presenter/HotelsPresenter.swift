//
//  HotelsPresenter.swift
//  Viper
//
//  Created by angelina on 14.02.2023.
//

import Foundation

/// Презентер отелей
final class HotelsPresenter: HotelsPresenterProtocol {
    
    // MARK: - Public property
    
    weak var view: (HotelsViewProtocol)?
    var interactor: HotelsInteractorProtocol
    var hotels: [Hotel] = []
    var country: String
    
    // MARK: - Initializer
    
    init(view: HotelsViewProtocol, interactor: HotelsInteractorProtocol, id: Int, country: String) {
        self.view = view
        self.interactor = interactor
        self.country = country
        fetchHotels(id: id)
    }
    
    // MARK: - Private methods
    
    private func fetchHotels(id: Int) {
        guard let hotels = interactor.fetchHotels(id: id) else { return }
        self.hotels = hotels
    }
}
