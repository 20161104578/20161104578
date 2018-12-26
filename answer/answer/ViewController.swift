//
//  ViewController.swift
//  answer
//
//  Created by 20161104578 on 2018/12/26.
//  Copyright © 2018 20161104578. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5","ball6","ball7","ball8"]
    
    var randomBallNumber: Int = 0
   @IBOutlet weak var imageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
         newBallImage()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func ButtenProssed(_ sender: UIButton) {newBallImage()}
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(8))
        imageview.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

