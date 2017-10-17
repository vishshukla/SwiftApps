//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by VS on 10/13/17.
//  Copyright © 2017 Vishwas Shukla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //connections
    @IBOutlet weak var ballImage: UIImageView!
 //   @IBOutlet weak var askButton: UIButton!
    
    let answers = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallnumber = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        newBallImage()
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func newBallImage() {
        randomBallnumber = Int(arc4random_uniform(5))
        ballImage.image = UIImage (named: answers[randomBallnumber])
    }
    
    
    
    


    
}

