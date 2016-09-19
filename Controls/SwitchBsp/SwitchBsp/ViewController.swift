//
//  ViewController.swift
//  SwitchBsp
//
//  Created by Christian Bleske on 17.12.14.
//  Copyright (c) 2014 Christian Bleske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var uiLabel: UILabel!
    @IBOutlet var uiSwitch: UISwitch!
    
    @IBAction func switchValueChanged(_ sender: AnyObject){
        var switchState:UISwitch!
        switchState = sender as! UISwitch
        
        if switchState.isOn {
            self.uiLabel.text = "Switch eingeschaltet!"
        } else  {
            self.uiLabel.text = "Switch ausgeschaltet!"
        }
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

