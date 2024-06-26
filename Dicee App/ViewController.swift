//
//  ViewController.swift
//  Dicee App
//
//  Created by Haris Khan on 02/05/24.
//  Copyright © 2024 Haris Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDiceImages()
    }

    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
       updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
               
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
               
        diceImageView2.image = UIImage(named:  diceArray[randomDiceIndex2])
    }
    
}

