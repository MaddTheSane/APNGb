//
//  Playback.swift
//  APNGb
//
//  Created by Stefan Godoroja on 10/14/16.
//  Copyright © 2016 Godoroja Stefan. All rights reserved.
//

import Cocoa

final class Playback: NSObject, CommandArgumentable {
    
    @objc var numberOfLoops = 0
    var skipFirstFrame = false
    
    override func setNilValueForKey(_ key: String) {
        
        if key == #keyPath(Playback.numberOfLoops) {
            numberOfLoops = 0
        }
    }
    
    // MARK: - CommandArgumentable
    
    func havePassedValidation() -> Bool {
        return true
    }
    
    func commandArguments() -> ([String], Any?) {
        var arguments: [String] = []
        
        if numberOfLoops > 0 {
            arguments.append(Argument.numberOfLoops + "\(numberOfLoops)")
        }
        
        if skipFirstFrame == true {
            arguments.append(Argument.skipFirstFrame)
        }
        
        return (arguments, nil)
    }
}
