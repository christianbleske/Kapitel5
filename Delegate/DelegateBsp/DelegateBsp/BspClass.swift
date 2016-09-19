//
//  BspClass.swift
//  DelegateBsp
//
//  Created by Christian Bleske on 26.12.14.
//  Copyright (c) 2014 Christian Bleske. All rights reserved.
//

import Foundation

class BspClass {
    var delegate: BspDelegate?
    
    init() {
        
    }
    
    func execute() {
        print("Ausführung des Delegate")
        
        delegate?.foo()
    }
}