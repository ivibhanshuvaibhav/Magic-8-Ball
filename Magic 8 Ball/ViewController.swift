//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Vibhanshu Vaibhav on 20/07/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var answerValue: Int = 0
    
    @IBOutlet weak var answerView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomBallNumber()
    }
    
    @IBAction func askQuestion(_ sender: Any) {
       randomBallNumber()
    }
    
    func randomBallNumber(){
        answerValue = Int(arc4random_uniform(5) + 1)
        answerView.image = UIImage(named: "ball\(answerValue)")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomBallNumber()
    }

}

