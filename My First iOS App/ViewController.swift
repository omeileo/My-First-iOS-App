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
    @IBOutlet weak var firstOperand: UITextField!
    @IBOutlet weak var secondOperand: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var operatorLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        resultLabel.alpha = 0.5
        warningLabel.isHidden = true
        firstOperand.text = nil
        secondOperand.text = nil
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addOperands()
    {
        operatorLabel.text = "+"
        
        if firstOperand.text != nil && secondOperand.text != nil
        {
            resultLabel.alpha = 1.0
            resultLabel.text = "\(Int(firstOperand.text!)! + Int(secondOperand.text!)!)"
            
            if warningLabel.text != nil
            {
                warningLabel.isHidden = true
                warningLabel.text = nil
            }
        }
        else if (firstOperand.text == nil && secondOperand.text != nil) || (firstOperand.text != nil && secondOperand.text == nil)
        {
            warningLabel.isHidden = false
            warningLabel.text = "Add another operand."
        }
        else
        {
            warningLabel.isHidden = false
            warningLabel.text = "What do you want to add?"
        }
    }
    
    @IBAction func subtractOperands()
    {
        operatorLabel.text = "-"
        
        if firstOperand.text != nil && secondOperand.text != nil
        {
            resultLabel.alpha = 1.0

            resultLabel.text = "\(Int(firstOperand.text!)! - Int(secondOperand.text!)!)"
            
            if warningLabel.text != nil
            {
                warningLabel.isHidden = true
                warningLabel.text = nil
            }
        }
        else if (firstOperand.text == nil && secondOperand.text != nil) || (firstOperand.text != nil && secondOperand.text == nil)
        {
            warningLabel.isHidden = false
            warningLabel.text = "Add another operand."
        }
        else
        {
            warningLabel.isHidden = false
            warningLabel.text = "What do you want to add?"
        }
    }
}

