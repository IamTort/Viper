// HotelsInteractor.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Получение данных для экрана отелей
final class HotelsInteractor: HotelsInteractorInputProtocol {
    
    // MARK: - Public property
    
    weak var presenter: HotelsInteractorOutputProtocol?
    var hotels: [Hotel] = []
    
    // MARK: - Private property

    private let data = [
        Hotel(
            hotelName: "Roadmap Hotel 5*",
            hotelImageName: I.hotel,
            rate: 8.9,
            description: S.description
        ),
        Hotel(
            hotelName: "Palace Kempinski",
            hotelImageName: I.hotel2,
            rate: 7.6,
            description: S.description
        ),
        Hotel(
            hotelName: "Calista Luxury Resort",
            hotelImageName: I.hotel3,
            rate: 9.6,
            description: S.description
        )
    ]

    // MARK: - Public methods

    func fetchHotels(id: Int) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.hotels = self.data
            self.presenter?.receiveData()
        }
    }
}
