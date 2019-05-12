//
//  AssemblyFrameCellView.swift
//  APNGb
//
//  Created by Stefan Godoroja on 12/15/16.
//  Copyright © 2016 Godoroja Stefan. All rights reserved.
//

import Cocoa

final class AssemblyFrameCellView: NSTableCellView {

    @IBOutlet var nameTextField: NSTextField!
    @IBOutlet var sizeTextField: NSTextField!
    @IBOutlet var delayTextField: NSTextField!
    
    static func height() -> CGFloat {
        return 60.0
    }
    
    static func identifier() -> NSStoryboard.SceneIdentifier {
        return NSStoryboard.SceneIdentifier("assembly.frame.cell")
    }
}
