// HotelsPresenterProtocol.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол (презентера) выходных данных вью экрана отелей
protocol HotelsViewOutputProtocol {
    var country: String { get set }
    func fetchHotels()
    func makeHotelsCount() -> Int
    func receiveHotel(index: Int) -> Hotel?
}
