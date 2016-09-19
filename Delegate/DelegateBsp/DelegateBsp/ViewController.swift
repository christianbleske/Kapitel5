//
//  ViewController.swift
//  DelegateBsp
//
//  Created by Christian Bleske on 26.12.14.
//  Copyright (c) 2014 Christian Bleske. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BspDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bsp: BspClass = BspClass()
        bsp.delegate = self
        bsp.execute()
    }
    
    func foo() {
        print("Beispiel für ein Delegate...")
    }

}

