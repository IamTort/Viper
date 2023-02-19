// HotelsPresenter.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Презентер отелей
final class HotelsPresenter: HotelsViewOutputProtocol, HotelsInteractorOutputProtocol {
    // MARK: - Public property

    weak var view: HotelsViewInputProtocol?
    var interactor: HotelsInteractorInputProtocol
    var country: String
    var id: Int

    // MARK: - Initializer

    init(view: HotelsViewInputProtocol, interactor: HotelsInteractorInputProtocol, id: Int, country: String) {
        self.view = view
        self.interactor = interactor
        self.country = country
        self.id = id
    }

    // MARK: - Public methods

    func fetchHotels() {
        interactor.fetchHotels(id: id)
    }
    
    func receiveData() {
        view?.setData()
    }
    
    func makeHotelsCount() -> Int {
        interactor.hotels.count
    }
    
    func receiveHotel(index: Int) -> Hotel? {
        interactor.hotels[index]
    }
}
