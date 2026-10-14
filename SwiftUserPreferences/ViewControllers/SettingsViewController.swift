//
//  ViewController.swift
//  SwiftUserPreferences
//
//  Created by Erik Valencia Cardona on 13/10/26.
//

import UIKit

final class SettingsViewController: UIViewController {
    private let themePreferences = ThemePreferences()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Settings"
        loadSelectedTheme()
    }
    
   
    
    @IBOutlet private weak var themeSegmentedControl: UISegmentedControl!
    
    @IBAction private func themeChanged(_ sender: UISegmentedControl) {
        let selectedTheme: AppTheme
        
        if sender.selectedSegmentIndex == 0 {
            selectedTheme = .light
        } else {
            selectedTheme = .dark
        }
        themePreferences.save(theme: selectedTheme)
        applyTheme(selectedTheme)
    }
    
    private func loadSelectedTheme() {
        let savedTheme = themePreferences.loadTheme()
        
        themeSegmentedControl.selectedSegmentIndex = savedTheme == .light ? 0 : 1
        
        applyTheme(savedTheme)
    }
    
    private func applyTheme(_ theme : AppTheme) {
        view.window?.overrideUserInterfaceStyle = theme == .light ? .light : .dark
    }
}
