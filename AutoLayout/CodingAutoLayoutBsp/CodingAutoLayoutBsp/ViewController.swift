//
//  ViewController.swift
//  CodingAutoLayoutBsp
//
//  Created by Christian Bleske on 25.09.14.
//  Copyright (c) 2014 Christian Bleske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initView() {
        
        let viewBlue = UIView()
        viewBlue.translatesAutoresizingMaskIntoConstraints = false
        viewBlue.backgroundColor = UIColor.blue
        
        
        let viewGreen = UIView()
        viewGreen.translatesAutoresizingMaskIntoConstraints = false
        viewGreen.backgroundColor = UIColor.green
        
        view.addSubview(viewBlue)
        view.addSubview(viewGreen)
        
        
        let viewsDictionary = ["viewBlue":viewBlue,"viewGreen":viewGreen]
        
        //sizing constraints
        
        //viewBlue
        let viewBlue_constraint_H:Array = NSLayoutConstraint.constraints(withVisualFormat: "H:[viewBlue(100)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        let viewBlue_constraint_V:Array = NSLayoutConstraint.constraints(withVisualFormat: "V:[viewBlue(100)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        
        viewBlue.addConstraints(viewBlue_constraint_H)
        viewBlue.addConstraints(viewBlue_constraint_V)
        
        //viewGreen
        let viewGreen_constraint_H:Array = NSLayoutConstraint.constraints(withVisualFormat: "H:[viewGreen(50)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        let viewGreen_constraint_V:Array = NSLayoutConstraint.constraints(withVisualFormat: "V:[viewGreen(50)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        
        viewGreen.addConstraints(viewGreen_constraint_H)
        viewGreen.addConstraints(viewGreen_constraint_V)
        //position constraints
        
        //views
        let views_constraint_HPos:NSArray = NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[viewBlue]-40-[viewGreen]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary) as NSArray
        let views_constraint_VPos:NSArray = NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[viewBlue]-10-[viewGreen]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary) as NSArray
        
        view.addConstraints(views_constraint_HPos as! [NSLayoutConstraint])
        view.addConstraints(views_constraint_VPos as! [NSLayoutConstraint])


    }
    

}

