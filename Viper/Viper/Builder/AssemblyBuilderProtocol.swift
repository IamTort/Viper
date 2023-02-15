//
//  AssemblyBuilderProtocol.swift
//  Viper
//
//  Created by angelina on 14.02.2023.
//

import UIKit

/// Протокол сборщика модулей
protocol AssemblyBuilderProtocol {
    func makeMainModule(router: RouterProtocol) -> UIViewController
    func makeHotelsModule(id: Int, country: String, router: RouterProtocol) -> UIViewController 
}
