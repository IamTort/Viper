// CountriesInputViewProtocol.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол экрана стран
protocol CountriesInputViewProtocol: AnyObject {
    var didTapOnCountry: Int? { get set }
    func updateTableView()
}
