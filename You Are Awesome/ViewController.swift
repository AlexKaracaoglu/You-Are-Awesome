//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Alex Karacaoglu on 1/12/19.
//  Copyright © 2019 Alex Karacaoglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    // viewDidLoad executes when app's view loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hey you, yes you, just wanted to say the view loaded!")
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        print("The button was clicked good sir")
        
        if messageLabel.text == "You are Awesome!" {
            messageLabel.text = "You are Grrrrrrrr8"
            messageLabel.textColor = UIColor.purple
            messageLabel.textAlignment = NSTextAlignment.right
        }
        else if messageLabel.text == "You are Grrrrrrrr8" {
            messageLabel.text = "You are Quite Amazing"
            messageLabel.textColor = UIColor.blue
            messageLabel.textAlignment = NSTextAlignment.center
        }
        else {
            messageLabel.text = "You are Awesome!"
            messageLabel.textColor = UIColor.green
            messageLabel.textAlignment = NSTextAlignment.left
        }
    }
    
    @IBAction func clearMessage(_ sender: UIButton) {
        messageLabel.text = ""
    }
    
}

