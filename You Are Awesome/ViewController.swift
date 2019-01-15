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
    var index = 0
    
    // viewDidLoad executes when app's view loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        
        let messages = ["You are Awesome!",
                        "You are Grrrrrrrr8",
                        "You are Quite Amazing",
                        "You are Pretty Cool",
                        "This is a pretty long one so we can fix it"]
        
        messageLabel.text = messages[index]
        index = index + 1
        if index == messages.count {
            index = 0
        }
        
        
//        let messageAwesome = "You are Awesome!"
//        let messageGreat = "You are Grrrrrrrr8"
//        let messageAmazing = "You are Quite Amazing"
//
//        if messageLabel.text == messageAwesome {
//            messageLabel.text = messageGreat
//            messageLabel.textColor = UIColor.purple
//            messageLabel.textAlignment = NSTextAlignment.right
//        }
//        else if messageLabel.text == messageGreat {
//            messageLabel.text = messageAmazing
//            messageLabel.textColor = UIColor.blue
//            messageLabel.textAlignment = NSTextAlignment.center
//        }
//        else {
//            messageLabel.text = messageAwesome
//            messageLabel.textColor = UIColor.green
//            messageLabel.textAlignment = NSTextAlignment.left
//        }
    }
    
    @IBAction func clearMessage(_ sender: UIButton) {
        messageLabel.text = ""
    }
    
}

