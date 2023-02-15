// HotelsInteractor.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Получение данных для экрана отелей
final class HotelsInteractor: HotelsInteractorProtocol {
    // MARK: - Private property

    private var baliHotels = [
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
        ),
    ]

    // MARK: - Public methods

    func fetchHotels(id: Int) -> [Hotel]? {
        switch id {
        case 1:
            return baliHotels
        case 2:
            return baliHotels
        case 3:
            return baliHotels
        case 4:
            return baliHotels
        case 5:
            return baliHotels
        default:
            return nil
        }
    }
}
