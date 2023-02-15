// Strings+Generated.swift
// Copyright © RoadMap. All rights reserved.

// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum S {
    /// Лучшие туры
    internal static let bestToursTitle = S.tr("Localizable", "bestToursTitle", fallback: "Лучшие туры")
    /// cell
    internal static let collectionCellIdentifier = S.tr("Localizable", "collectionCellIdentifier", fallback: "cell")
    /// Отель располагается в бывшем дворце периода Османской империи, и это уже о многом говорит. На сегодняшний день
    /// Çırağan Palace Kempinski принадлежит сети Kempinski. Лучший номер этой гостиницы - Sultan Suite занимает 14-ое
    /// место в рейтинге самых дорогих люксов в мире и 2-ое место по площади среди гостиничных номеров Европы.
    internal static let description = S.tr(
        "Localizable",
        "description",
        fallback: "Отель располагается в бывшем дворце периода Османской империи, и это уже о многом говорит. На сегодняшний день Çırağan Palace Kempinski принадлежит сети Kempinski. Лучший номер этой гостиницы - Sultan Suite занимает 14-ое место в рейтинге самых дорогих люксов в мире и 2-ое место по площади среди гостиничных номеров Европы."
    )
    /// init(coder:) has not been implemented
    internal static let error = S.tr("Localizable", "error", fallback: "init(coder:) has not been implemented")
    /// tableCell
    internal static let tableCellIdentifier = S.tr("Localizable", "tableCellIdentifier", fallback: "tableCell")
    /// Localizable.strings
    ///   Viper
    ///
    ///   Created by angelina on 13.02.2023.
    internal static let title = S.tr("Localizable", "title", fallback: "Home")
}

// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension S {
    private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
        let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
        return String(format: format, locale: Locale.current, arguments: args)
    }
}

// swiftlint:disable convenience_type
private final class BundleToken {
    static let bundle: Bundle = {
        #if SWIFT_PACKAGE
        return Bundle.module
        #else
        return Bundle(for: BundleToken.self)
        #endif
    }()
}

// swiftlint:enable convenience_type
