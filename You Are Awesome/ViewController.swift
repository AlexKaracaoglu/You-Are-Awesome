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
    @IBOutlet weak var soundSwitch: UISwitch!
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
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }
            catch {
                print("ERROR: data in sound file \(soundName) was not able to be played")
            }
        }
        else {
            print("ERROR file \(soundName) didn't load")
        }
    }
    
    func nonRepeating(lastIndex: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<maxValue)
        } while lastIndex == newIndex
        return newIndex
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        
        let messages = ["You are Awesome!",
                        "You are Grrrrrrrr8",
                        "You are Quite Amazing",
                        "You are Pretty Cool",
                        "This is a pretty long one so we can fix it"]
        
        // Messages
        index = nonRepeating(lastIndex: index, maxValue: messages.count)
        
        messageLabel.text = messages[index]
        
        // Images
        imageIndex = nonRepeating(lastIndex: imageIndex, maxValue: numberOfImages)
        imageView.image = UIImage(named: "image\(imageIndex)")
        
        // Sounds
        if soundSwitch.isOn {
            soundIndex = nonRepeating(lastIndex: soundIndex, maxValue: numberOfSounds)
            let soundName = "sound\(soundIndex)"
            playSound(soundName: soundName, audioPlayer: &soundPlayer)
        }
    }
    
    @IBAction func clearMessage(_ sender: UIButton) {
        messageLabel.text = ""
        imageView.image = nil
    }
    
    
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if !soundSwitch.isOn && soundIndex != -1 {
            soundPlayer.stop()
        }
        
    }
    
}

