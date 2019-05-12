//
//  ViewControllerId.swift
//  APNGb
//
//  Created by Stefan Godoroja on 12/10/16.
//  Copyright © 2016 Godoroja Stefan. All rights reserved.
//

import AppKit.NSStoryboard

/// Maps identifiers for all view controllers from the application.
///
/// - Assembly: AssemblyViewController identifier
/// - Disassembly: DisassemblyViewController identifier
/// - Preferences: PreferencesContainerViewController identifier
/// - DropHint: DropHintViewController identifier
/// - ChildContainer: ChildContainerViewController identifier
/// - SideBar: SideBarViewController identifier
/// - AssemblyPreferences: AssemblyPreferencesViewController identifier
/// - DisassemblyPreferences: DisassemblyPreferencesViewController identifier
/// - Unknown: Default value if view controller doesn't have an identifier.
enum ViewControllerId: Int {
    case Assembly
    case Disassembly
    case Preferences
    case DropHint
    case ChildContainer
    case SideBar
    case AssemblyPreferences
    case DisassemblyPreferences
    case Unknown = 999
}

extension ViewControllerId {
    
    /// Custom initalizer.
    ///
    /// - Parameter rawValue: Int value used to identify a view controller.
    init(fromRawValue rawValue: Int) {
        self = ViewControllerId(rawValue: rawValue) ?? .Unknown
    }
    
    /// Identifies view controller storyboard id.
    ///
    /// - Returns: Storyboard identifier if view controller
    ///  has a valid identifier, else returns an empty string.
    func storyboardVersion() -> NSStoryboard.SceneIdentifier {
        switch self {
        case .Assembly:
            return NSStoryboard.SceneIdentifier(rawValue: "assembly.view")
        case .Disassembly:
            return NSStoryboard.SceneIdentifier(rawValue: "disassembly.view")
        case .Preferences:
            return NSStoryboard.SceneIdentifier(rawValue: "preferences.view")
        case .DropHint:
            return NSStoryboard.SceneIdentifier(rawValue: "drophint.view")
        case .ChildContainer:
            return NSStoryboard.SceneIdentifier(rawValue: "childcontainer.view")
        case .AssemblyPreferences:
            return NSStoryboard.SceneIdentifier(rawValue: "assemblypreferences.view")
        case .DisassemblyPreferences:
            return NSStoryboard.SceneIdentifier(rawValue: "disassemblypreferences.view")
        default:
            return NSStoryboard.SceneIdentifier(rawValue: String.empty)
        }
    }
}
