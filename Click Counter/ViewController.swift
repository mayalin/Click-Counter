//
//  ViewController.swift
//  Click Counter
//
//  Created by yalin.ma on 1/13/16.
//  Copyright © 2016 yalin.ma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        //label
        let label = UILabel()
        label.frame = CGRectMake(0, 0, 90, 90)
        label.center = CGPointMake(UIScreen.mainScreen().bounds.size.width/2+17, 200)//constraints
        label.text = "0"
        label.font = UIFont (name: "AppleSDGothicNeo-Thin", size: 96) // modify font style and size
        label.textColor = UIColor(red: 221/255.0, green: 19/255.0, blue: 131/255.0, alpha: 1.0)// modify color
        
        
        self.view.addSubview(label)
        self.label = label
        
        //Button
        let button = UIButton()
        button.frame = CGRectMake(0, 0, 90, 90)
        button.center = CGPointMake(UIScreen.mainScreen().bounds.size.width/2+2, label.center.y+100)//constraints
        button.setTitle("Click", forState:.Normal)
        button.setTitleColor(UIColor(red: 91/255.0, green: 70/255.0, blue: 91/255.0, alpha: 1.0), forState: .Normal)// modify color
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        
    }
    func incrementCount(){
    self.count++
        self.label.text = "\(self.count)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

