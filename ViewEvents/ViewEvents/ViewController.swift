//
//  ViewController.swift
//  ViewEvents
//
//  Created by Christian Bleske on 15.11.14.
//  Copyright (c) 2014 Christian Bleske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad wurde aufgerufen!")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false);
        print("ViewWillAppear wurde aufgerufen!")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewDidAppear wurde aufgerufen!")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(false)
        print("ViewWillDisappear wurde aufgerufen!")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewDidDisappear wurde aufgerufen!")
    }

}

