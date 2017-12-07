//
//  ViewController.swift
//  Click Counter
//
//  Created by Dhairya Nishar on 11/29/17.
//  Copyright © 2017 Dhairya Nishar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Label
        var label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        // Button
        var button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
    }
    @objc func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
    }

}

