# Swift User Preferences

A practical iOS project built with **Swift and UIKit** to learn how to persist user preferences using `UserDefaults`.

## Overview

This project demonstrates how to save and retrieve an application's appearance preference, allowing users to select between Light Mode and Dark Mode.

The selected preference is stored locally using `UserDefaults`, so the application can restore the saved selection when it is reopened.

## Features

- **Theme selection:** Choose between Light Mode and Dark Mode.
- **Persistent preferences:** Save the selected theme using `UserDefaults`.
- **Preference retrieval:** Load the saved theme when the settings screen opens.
- **Default configuration:** Use Light Mode when no valid preference has been saved.
- **Separation of responsibilities:** Keep preference persistence in a dedicated service.

## Technologies

- Swift
- UIKit
- Storyboard
- UserDefaults
- Xcode

## Project Structure

```text
SwiftUserPreferences/
├── Models/
│   └── AppTheme.swift
├── Services/
│   └── ThemePreferences.swift
├── ViewControllers/
│   └── SettingsViewController.swift
├── Main.storyboard
└── README.md
```

## Architecture

### AppTheme

Defines the available appearance options using a Swift enum with raw string values.

```swift
enum AppTheme: String {
    case light
    case dark
}
```

### ThemePreferences

Encapsulates the persistence logic using `UserDefaults`.

Its responsibilities include:

- Saving the selected theme.
- Retrieving the saved theme.
- Returning Light Mode as the default when no valid value exists.

### SettingsViewController

Manages the settings interface and responds to changes in the selected theme.

It coordinates the UI with `ThemePreferences` and applies the selected appearance through UIKit.

## How It Works

1. The settings screen loads the saved theme.
2. The segmented control reflects the stored preference.
3. When the user selects a different theme, the controller saves the selection.
4. The application applies the selected appearance.
5. The saved preference can be retrieved when the application is reopened.

## Key Concepts Learned

- Persisting simple values with `UserDefaults`.
- Using enums to represent a finite set of options.
- Separating persistence logic from view controllers.
- Connecting Storyboard outlets and actions.
- Handling UI events with `IBAction`.
- Applying appearance preferences with UIKit.

## Important Note

`UserDefaults` is intended for small, non-sensitive settings such as appearance preferences, language selection, and notification settings. It is **not suitable for storing passwords, authentication tokens, or other sensitive information**.

## Requirements

- macOS
- Xcode
- An iOS Simulator or compatible iOS device

## Getting Started

1. Clone this repository.
2. Open the `.xcodeproj` file in Xcode.
3. Select an iOS Simulator or connected device.
4. Build and run the application.
5. Open Settings and switch between Light Mode and Dark Mode.

## Purpose

This project is part of my hands-on learning journey in iOS development, focusing on UIKit, local persistence, and maintainable code organization.
