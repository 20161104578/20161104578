//
//  ViewController.swift
//  answer
//
//  Created by 20161104578 on 2018/12/26.
//  Copyright © 2018 20161104578. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var newBallImage1: Int = 0
    var newBallImage2: Int = 0
    let ballArray = ["ball1","ball2","ball3","ball4","ball5","ball6","ball7","ball8"]
    
    //var randomBallNumber: Int = 0

    
    
    @IBOutlet weak var imageview1: UIImageView!
    
    
    
    @IBOutlet weak var imageview2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      updateDiceImages()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func ButtenProssed(_ sender: UIButton) {updateDiceImages()}
    func updateDiceImages() {
        newBallImage1 = Int(arc4random_uniform(8))
        newBallImage2 = Int(arc4random_uniform(8))
    
        imageview1.image = UIImage(named: ballArray[newBallImage1])
        imageview2.image = UIImage(named: ballArray[newBallImage2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
      //  newBallImage()
    }
    
}

