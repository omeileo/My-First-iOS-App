//
//  ViewController.swift
//  My First iOS App
//
//  Created by Jase-Omeileo West on 6/8/17.
//  Copyright © 2017 Jase-Omeileo West. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var label_name: UILabel!
    var tap_count = 0
    
    @IBAction func button_changeName(_ sender: Any)
    {
        label_name.text = "Jase-Omeileo West"
        tap_count += 1
        
        if tap_count >= 10
        {
            label_name.text = "You've unlocked the annoying award! Woo."
        }
    }
    
    @IBAction func button_changeName2(_ sender: Any)
    {
        label_name.text = "Buttons are cool!"
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

