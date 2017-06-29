//
//  ViewController.swift
//  buttonAnimation
//
//  Created by Vijay Adhikari on 29/06/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var buttons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for button in buttons{
        
            button.layer.cornerRadius = 8
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pulseClicked(_ sender: UIButton) {
        sender.pulState()
    }
    
    @IBAction func shakeClicked(_ sender: UIButton) {
        sender.shake()
    }
    
    @IBAction func flashClicked(_ sender: UIButton) {
        sender.flash()
    }
}

