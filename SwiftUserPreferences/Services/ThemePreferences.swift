//
//  ThemePreferences.swift
//  SwiftUserPreferences
//
//  Created by Erik Valencia Cardona on 13/10/26.
//

import Foundation

final class ThemePreferences {
    
    private let defaults: UserDefaults
    private let themeKey = "selectedTheme"
    
    init(defaults: UserDefaults = .standard) {
        self.defaults = defaults
    }
    
    func save(theme: AppTheme) {
        defaults.set(theme.rawValue, forKey: themeKey)
    }
    
    func loadTheme() -> AppTheme {
        guard let savedValue = defaults.string(forKey: themeKey),
              let theme = AppTheme(rawValue: savedValue) else {
            return .light
        }
        
        return theme
    }
}
