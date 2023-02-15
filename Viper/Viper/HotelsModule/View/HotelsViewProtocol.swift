// HotelsViewProtocol.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол отображения с отелями
protocol HotelsViewProtocol: AnyObject {
    var presenter: HotelsPresenterProtocol? { get set }
}
