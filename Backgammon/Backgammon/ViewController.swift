//
//  ViewController.swift
//  Backgammon
//
//  Created by Nourallah on 24.03.18.
//  Copyright © 2018 Nourallah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDicee1 : Int = 0
    var randomDicee2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var Dicee2: UIImageView!
    @IBOutlet weak var Dicee1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDicee()
        Roll.layer.cornerRadius = 7
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var Roll: UIButton!
    
    @IBAction func RollButton(_ sender: UIButton) {
        updateDicee()
        
    }
    
    func updateDicee() {
        
        randomDicee1 = Int(arc4random_uniform(6))
        randomDicee2 = Int(arc4random_uniform(6))
        
        Dicee1.image = UIImage(named: diceArray[randomDicee1])
        Dicee2.image = UIImage(named: diceArray[randomDicee2])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDicee()
    }
}

