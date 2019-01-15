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
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        let messageAwesome = "You are Awesome!"
        let messageGreat = "You are Grrrrrrrr8"
        let messageAmazing = "You are Quite Amazing"
        
        if messageLabel.text == messageAwesome {
            messageLabel.text = messageGreat
            messageLabel.textColor = UIColor.purple
            messageLabel.textAlignment = NSTextAlignment.right
        }
        else if messageLabel.text == messageGreat {
            messageLabel.text = messageAmazing
            messageLabel.textColor = UIColor.blue
            messageLabel.textAlignment = NSTextAlignment.center
        }
        else {
            messageLabel.text = messageAwesome
            messageLabel.textColor = UIColor.green
            messageLabel.textAlignment = NSTextAlignment.left
        }
    }
    
    @IBAction func clearMessage(_ sender: UIButton) {
        messageLabel.text = ""
    }
    
}

