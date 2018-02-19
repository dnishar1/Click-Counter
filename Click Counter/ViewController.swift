//
//  ViewController.swift
//  Click Counter
//
//  Created by Dhairya Nishar on 11/29/17.
//  Copyright © 2017 Dhairya Nishar. All rights reserved.


import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet var label:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
    }

}
