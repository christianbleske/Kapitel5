//
//  DetailViewController.swift
//  K5BspStoryboard1
//
//  Created by Christian Bleske on 09.11.14.
//  Copyright (c) 2014 Christian Bleske. All rights reserved.
//

import UIKit

class DetailViewController : UIViewController {
    
    
    @IBOutlet weak var uiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }
    
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            //self.configureView()
        }
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            if let label = self.uiLabel {
                label.text = detail.description
            }
        }
    }
    
}
