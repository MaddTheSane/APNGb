//
//  StringExtension.swift
//  APNGb
//
//  Created by Stefan Godoroja on 10/20/16.
//  Copyright © 2016 Godoroja Stefan. All rights reserved.
//

import Cocoa

extension String {
    
    static let dot = "."
    static let empty = ""
    static let slash = "/"
    static let space = " "
    static let colon = ":"
    static let kilobyteAbbreviation = "KB"
    
    func fileName() -> String {
        return URL(fileURLWithPath: self).deletingPathExtension().lastPathComponent
    }
    
    func fileExtension() -> String {
        return URL(fileURLWithPath: self).pathExtension
    }
}
