//
//  Goalie.swift
//  ScoreCard
//
//  Created by Pete Dias on 12/28/15.
//  Copyright © 2015 Pete Dias. All rights reserved.
//

import Foundation

class Goalie: Player{
    
    private var saves: Int = 0
    
    init(number:Int, dominantHand: DominantHand, firstName: String, middleName: String, lastName: String,
        saves: Int = 0){
        
        self.saves = saves
            
        super.init(jerseyNumber: number, dominantHand: dominantHand, firstName: firstName,
            middleName: middleName, lastName: lastName)
        
    }
    
    func addSave(){
        saves++
    }
    
}
