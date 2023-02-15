//
//  HotelsPresenterProtocol.swift
//  Viper
//
//  Created by angelina on 15.02.2023.
//

import Foundation

/// Протокол презентера экрана отелей
protocol HotelsPresenterProtocol {
    var country: String { get set }
    var hotels: [Hotel] { get set }
}
