// HotelsInteractorProtocol.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол входных данных интерактора отелей
protocol HotelsInteractorInputProtocol {
    var hotels: [Hotel] { get set }
    func fetchHotels(id: Int)
}
