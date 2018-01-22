//
//  ViewController.swift
//  You Are Awesome! (Ori)
//
//  Created by Bryan Kim on 1/21/18.
//  Copyright © 2018 Bryan Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func showMessageButtonPresses(_ sender: UIButton) {
        
        let messages = ["You are Fantastic", "You are Great", "You are Amazing", "You are Cool", "I need another Class"]
    
        
        messageLabel.text = messages[index]
        index += 1
        if index > messages.count - 1 {
            index = 0
        }
        
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

