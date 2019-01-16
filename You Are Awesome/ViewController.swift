//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Alex Karacaoglu on 1/12/19.
//  Copyright © 2019 Alex Karacaoglu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 4
    
    var soundPlayer = AVAudioPlayer()
    
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
        
        // Messages
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0...messages.count-1)
        } while index == newIndex
        index = newIndex
        
        messageLabel.text = messages[index]
        
        // Images
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        imageIndex = newIndex
        imageView.image = UIImage(named: "image\(newIndex)")
        
        // Sounds
        repeat {
            newIndex = Int.random(in: 0..<numberOfSounds)
        } while soundIndex == newIndex
        soundIndex = newIndex
        let soundName = "sound\(newIndex)"
        if let sound = NSDataAsset(name: soundName) {
            do {
                try soundPlayer = AVAudioPlayer(data: sound.data)
                soundPlayer.play()
            }
            catch {
                print("ERROR: data in sound file \(soundName) was not able to be played")
            }
        }
        else {
            print("ERROR file \(soundName) didn't load")
        }
        
        
        
//        messageLabel.text = messages.randomElement()!
        
//        messageLabel.text = messages[index]
//        index = index + 1
//        if index == messages.count {
//            index = 0
//        }
        
        
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

