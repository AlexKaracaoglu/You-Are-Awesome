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
        messageLabel.text = "You are Awesome!"
        messageLabel.textColor = UIColor.green
        messageLabel.textAlignment = NSTextAlignment.left
    }
    
    @IBAction func showAnotherMessagePressed(_ sender: UIButton) {
        messageLabel.text = "You are Grrrrrrrr8"
        messageLabel.textColor = UIColor.purple
        messageLabel.textAlignment = NSTextAlignment.right
    }
    
    @IBAction func clearMessage(_ sender: UIButton) {
        messageLabel.text = ""
    }
    
}

