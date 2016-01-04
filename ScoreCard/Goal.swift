//
//  Goal.swift
//  ScoreCard
//
//  Created by Pete Dias on 12/29/15.
//  Copyright © 2015 Pete Dias. All rights reserved.
//

import Foundation

class Goal{
    
    var scorer: Player!
    var assisted = [Player]!()
    var period: Period!
    
    init(period: Period, scorer: Player, assisted: Player...){
        
        self.scorer = scorer
        self.period = period
        
        for player in assisted {
            self.assisted.append(player)
        }
    }
}