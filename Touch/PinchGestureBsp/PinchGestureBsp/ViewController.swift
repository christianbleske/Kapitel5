//
//  ViewController.swift
//  PinchGestureBsp
//
//  Created by Christian Bleske on 30.12.14.
//  Copyright (c) 2014 Christian Bleske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.black
    }
   
    @IBAction func scaleImage(_ sender: UIPinchGestureRecognizer) {
        self.view.transform = self.view.transform.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1
    }

}

