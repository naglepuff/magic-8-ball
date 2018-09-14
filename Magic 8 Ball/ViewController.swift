//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Mike Nagler on 9/13/18.
//  Copyright © 2018 Mike Nagler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eightBallAnswers = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var magicEightBallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shakeEightBall()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func askButtonPressed(_ sender: Any) {
        shakeEightBall()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        shakeEightBall()
    }
    
    func shakeEightBall() {
        let messageIndex = Int(arc4random_uniform(5))
        magicEightBallImage.image = UIImage(named: eightBallAnswers[messageIndex])
    }
}

