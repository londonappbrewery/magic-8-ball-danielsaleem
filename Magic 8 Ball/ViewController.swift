//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Danny on 21/11/2016.
//  Copyright © 2016 Danny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let ballArray : [String] = [ "ball1", "ball2", "ball3", "ball4", "ball5" ]
    
     var randomBallNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
       newBallImage()

        
    }
    
    func newBallImage() {
        
        randomBallNumber = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    
    
    
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    
}

