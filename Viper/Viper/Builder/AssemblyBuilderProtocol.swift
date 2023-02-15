// AssemblyBuilderProtocol.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Протокол сборщика модулей
protocol AssemblyBuilderProtocol {
    func makeMainModule(router: RouterProtocol) -> UIViewController
    func makeHotelsModule(id: Int, country: String, router: HotelRouterInputProtocol) -> UIViewController
}
