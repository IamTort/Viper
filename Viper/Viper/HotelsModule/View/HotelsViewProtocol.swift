//
//  HotelsViewProtocol.swift
//  Viper
//
//  Created by angelina on 15.02.2023.
//

import Foundation

/// Протокол отображения с отелями
protocol HotelsViewProtocol: AnyObject {
    var presenter: HotelsPresenterProtocol? { get set }
}
