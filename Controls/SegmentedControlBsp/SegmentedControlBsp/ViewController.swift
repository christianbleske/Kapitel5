//
//  ViewController.swift
//  SegmentedControlBsp
//
//  Created by Christian Bleske on 17.12.14.
//  Copyright (c) 2014 Christian Bleske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var uiLabel: UILabel!
    @IBOutlet var uiSegmentedControl: UISegmentedControl!
    
    @IBAction func segmentedChanged(_ sender: UISegmentedControl) {
        
        //Automatisch steht als Sender AnyObjcet
        
        switch uiSegmentedControl.selectedSegmentIndex
        {
        case 0:
            uiLabel.text = "Erstes Segment ausgewählt!"
        case 1:
            uiLabel.text = "Zweites Segment ausgewählt!"
        case 2:
            uiLabel.text = "Drittes Segment ausgewählt!"
        default:
            break
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        uiLabel.text = "Erstes Segment ausgewählt!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

