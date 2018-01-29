//
//  ViewController.swift
//  You Are Awesome! (Ori)
//
//  Created by Bryan Kim on 1/21/18.
//  Copyright © 2018 Bryan Kim. All rights reserved.
//

import UIKit
import AVFoundation // associated with importing sounds


class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
 
    @IBOutlet weak var awesomeImage: UIImageView!
    var index = -1
    var imageNumber = -1
    let numberOfImages = 2
    var awesomePlayer = AVAudioPlayer()
    var soundNumber = -1
    let numberOfSounds = 2
    var soundName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    func playSound(soundName: String) {
        //Can we load in the file soundName?
        if let sound = NSDataAsset(name: soundName) {
            // check if sound.data is a sound file
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                // if sound.data is not a valid audio file
                print("ERROR: data in \(soundName) could not be played as a sound.")
            }
            
        } else {
            // if reading in the NSDataAsset did not work, tell the user / report the error
            print("ERROR: file\(soundName) did not load")
        }
        
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex = -1
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
            
        } while lastNumber == newIndex
        return newIndex
    }
    
    
    @IBAction func showMessageButtonPresses(_ sender: UIButton) {
        
        let messages = ["You are Fantastic", "You are Great", "You are Amazing", "You are Cool", "I need another Class", "Fabulous", "Genius", "Physics"]
        
        
        
        

    // This code will make sure that no messages repeat itself consecutively.
        
        // Show a message
 
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        // Show an image
        awesomeImage.isHidden = false
        imageNumber = nonRepeatingRandom(lastNumber: imageNumber, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named: "Image\(imageNumber)")
 
      
        // Get a random sound file to use in our soundName file
   
        
        soundNumber = nonRepeatingRandom(lastNumber: soundNumber, maxValue: numberOfSounds)
        // Play that random sound
        var soundName = "sound\(soundNumber)"
        
        playSound(soundName: soundName)
   
     
        
        
        
//        var randomIndex = Int(arc4random_uniform(UInt32(messages.count)))
//        messageLabel.text = messages[randomIndex]
        
//        messageLabel.text = messages[index]
//        index += 1
//        if index > messages.count - 1 {
//            index = 0
//        }
        
//        let message1 = "You are Awesome"
//        let message2 = "You are Great"
//        let message3 = "You are Amazing"
//        let message4 = "You are Fabulous"
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//            messageLabel.textColor = UIColor.blue
//        } else if messageLabel.text == message2 {
//            messageLabel.text = message4
//            messageLabel.textColor = UIColor.darkGray
//        } else if messageLabel.text == message4 {
//            messageLabel.text = message3
//            messageLabel.textColor = UIColor.brown
//        } else {
//            messageLabel.text = message1
//            messageLabel.textColor = UIColor.red
//        }
    }
 

}

