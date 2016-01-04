//
//  Penalty.swift
//  ScoreCard
//
//  Created by Pete Dias on 12/29/15.
//  Copyright © 2015 Pete Dias. All rights reserved.
//

import Foundation

class Penalty{
    
    var player: Player!
    var penaltyType: PenaltyType!
    var minutes: Double!
    var period: Period
    
    //var timeoff
    //var timeon
    
    init(player: Player, penaltyType: PenaltyType, minutes: Double, period: Period){
        
        self.player = player
        self.penaltyType = penaltyType
        self.minutes = minutes
        self.period = period
    }
}