//
//  Score.swift
//  DiceRoller
//
//  Created by BP Bista on 11/14/18.
//  Copyright © 2018 bpb.com.np. All rights reserved.
//

import Foundation

class Score {
    static let HIGH_SCORE_KEY = "diceRollerHighScoreKey"
    static var highScore:Int{
        get{
            return UserDefaults.standard.integer(forKey: HIGH_SCORE_KEY)
        }
        set(newValue){
            UserDefaults.standard.set(newValue, forKey:HIGH_SCORE_KEY)
        }
    }
}
