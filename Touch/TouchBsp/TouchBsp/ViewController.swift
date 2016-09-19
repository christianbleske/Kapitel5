//
//  ViewController.swift
//  TouchBsp
//
//  Created by Christian Bleske on 27.12.14.
//  Copyright (c) 2014 Christian Bleske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.isUserInteractionEnabled = true
        
        let singleTabGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleSingleTapGesture(_:)))
        singleTabGesture.numberOfTapsRequired = 1
        self.view.addGestureRecognizer(singleTabGesture)

        let doubleTabGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleDoubleTapGesture(_:)))
        doubleTabGesture.numberOfTapsRequired = 2
        self.view.addGestureRecognizer(doubleTabGesture)
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.handleRightSwipeGesture(_:)))
        rightSwipe.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(rightSwipe)
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.handleLeftSwipeGesture(_:)))
        leftSwipe.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(leftSwipe)
        
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.handlePinchGesture(_:)))
        self.view.addGestureRecognizer(pinchGesture)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func handleSingleTapGesture(_ gestureRecognizer: UITapGestureRecognizer)
    {
        uiLabel.text = "Einfacher Tab"
    }
    
    func handleDoubleTapGesture(_ gestureRecognizer: UITapGestureRecognizer)
    {
        uiLabel.text = "Doppelter Tab"
    }
    
    func handleRightSwipeGesture(_ gestureRecognizer: UISwipeGestureRecognizer)
    {
        uiLabel.text = "Swipe Geste rechts"
    }
    
    func handleLeftSwipeGesture(_ gestureRecognizer: UISwipeGestureRecognizer)
    {
        uiLabel.text = "Swipe Geste links"
    }
    
    func handlePinchGesture(_ gestureRecognizer: UISwipeGestureRecognizer)
    {
        uiLabel.text = "Pinch Geste"
    }


}

