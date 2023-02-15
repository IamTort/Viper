//
//  RouterMainProtocol.swift
//  Viper
//
//  Created by angelina on 15.02.2023.
//

import UIKit

/// Протокол базового роутера
protocol RouterMainProtocol {
    var navigationController: UINavigationController? { get set }
    var assemblyBuilder: AssemblyBuilderProtocol? { get set }
}
