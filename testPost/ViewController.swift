//
//  ViewController.swift
//  testPost
//
//  Created by Gary Cook on 2/3/15.
//  Copyright (c) 2015 Gary Cook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var messageLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel2.text = "Name is: " + enterMessageTextField.text
        
        messageLabel.text = "Hahaha" + " " + enterNameTextField.text
        
        messageLabel.hidden = false
        messageLabel2.hidden = false
        
        if messageLabel.textColor == UIColor.redColor() {
            messageLabel.textColor = UIColor.blueColor()
        }
        else
        {
            messageLabel.textColor = UIColor.redColor()
        }
        
        if mailButton.backgroundColor == UIColor.redColor() {
            mailButton.backgroundColor = UIColor.blueColor()
        }
        else
        {
            mailButton.backgroundColor = UIColor.redColor()
        }
        enterMessageTextField.text = nil
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState : UIControlState.Normal)
        
    }

    
    
    
}

