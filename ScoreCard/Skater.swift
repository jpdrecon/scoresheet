//
//  Skater.swift
//  ScoreCard
//
//  Created by Pete Dias on 12/28/15.
//  Copyright © 2015 Pete Dias. All rights reserved.
//

import Foundation

class Skater: Player{
    
    private var goals: Int
    private var assists: Int
    
    init(number:Int, dominantHand: DominantHand, firstName: String, middleName: String,
        lastName: String, goals: Int = 0, assists: Int = 0){
        
        self.goals = goals
        self.assists = assists
            
        super.init(jerseyNumber: number, dominantHand: dominantHand, firstName: firstName,
            middleName: middleName, lastName: lastName)
    }
}