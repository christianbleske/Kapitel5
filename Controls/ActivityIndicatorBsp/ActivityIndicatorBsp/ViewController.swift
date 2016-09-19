//
//  ViewController.swift
//  ActivityIndicatorBsp
//
//  Created by Christian Bleske on 17.12.14.
//  Copyright (c) 2014 Christian Bleske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var uiActivityIndicatorView: UIActivityIndicatorView!
    
    @IBAction func btnStartPressed(_ sender: AnyObject) {
        uiActivityIndicatorView.startAnimating()
    }
    
    @IBAction func btnStopPressed(_ sender: AnyObject) {
        uiActivityIndicatorView.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

