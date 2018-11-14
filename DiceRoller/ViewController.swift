//
//  ViewController.swift
//  DiceRoller
//
//  Created by BP Bista on 11/13/18.
//  Copyright © 2018 bpb.com.np. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomIndex1:Int = 0
    var randomIndex2:Int = 0
    var currentScore = 0
    var recordScore:Int = Score.highScore
    
    @IBOutlet weak var highScore: UILabel!
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var diceFace1: UIImageView!
    
    @IBOutlet weak var diceFace2: UIImageView!
    
    let dices = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.view.backgroundColor = UIColor.gray
        highScore.text = String(recordScore)
        updateDice()
    }

    @IBAction func onRoll(_ sender: UIButton) {
        updateDice()
    }
    func updateDice(){
        
        randomIndex1 = Int(arc4random_uniform(6))
        randomIndex2 = Int(arc4random_uniform(6))
        if(randomIndex1 ==  randomIndex2){
            currentScore += 1
            score.text = String(currentScore)
            recordScore = currentScore > recordScore ?  currentScore : recordScore
            Score.highScore = recordScore
            highScore.text = String(recordScore)
        }
        diceFace1.image = UIImage(named: dices[randomIndex1])
        diceFace2.image = UIImage(named: dices[randomIndex2])


    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDice()
    }
}

