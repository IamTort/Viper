//
//  HotelsInteractor.swift
//  Viper
//
//  Created by angelina on 14.02.2023.
//

import Foundation

/// Получение данных для экрана отелей
final class HotelsInteractor: HotelsInteractorProtocol {
    
    // MARK: - Private property
    
    private var baliHotels = [
        Hotel(hotelName: "Roadmap Hotel 5*", hotelImageName: I.hotel, rate: 8.9, description: "Отель располагается в бывшем дворце периода Османской империи, и это уже о многом говорит. На сегодняшний день Çırağan Palace Kempinski принадлежит сети Kempinski. Лучший номер этой гостиницы - Sultan Suite занимает 14-ое место в рейтинге самых дорогих люксов в мире и 2-ое место по площади среди гостиничных номеров Европы."),
        Hotel(hotelName: "Palace Kempinski", hotelImageName: I.hotel2, rate: 7.6, description: "Отель располагается в бывшем дворце периода Османской империи, и это уже о многом говорит. На сегодняшний день Çırağan Palace Kempinski принадлежит сети Kempinski. Лучший номер этой гостиницы - Sultan Suite занимает 14-ое место в рейтинге самых дорогих люксов в мире и 2-ое место по площади среди гостиничных номеров Европы."),
        Hotel(hotelName: "Calista Luxury Resort", hotelImageName: I.hotel3, rate: 9.6, description: "Отель располагается в бывшем дворце периода Османской империи, и это уже о многом говорит. На сегодняшний день Çırağan Palace Kempinski принадлежит сети Kempinski. Лучший номер этой гостиницы - Sultan Suite занимает 14-ое место в рейтинге самых дорогих люксов в мире и 2-ое место по площади среди гостиничных номеров Европы."),
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
