// HotelsInteractorProtocol.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол интерактора отелей
protocol HotelsInteractorProtocol {
    func fetchHotels(id: Int) -> [Hotel]?
}
