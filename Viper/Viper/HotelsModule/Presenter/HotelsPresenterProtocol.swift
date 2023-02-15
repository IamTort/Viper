// HotelsPresenterProtocol.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол презентера экрана отелей
protocol HotelsPresenterProtocol {
    var country: String { get set }
    var hotels: [Hotel] { get set }
}
