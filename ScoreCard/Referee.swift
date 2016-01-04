//
//  Referee.swift
//  ScoreCard
//
//  Created by Pete Dias on 12/29/15.
//  Copyright © 2015 Pete Dias. All rights reserved.
//

import Foundation

class Referee: Official{
    
    override init(firstName: String, middleName: String, lastName: String, refereeId: String){
        
        super.init(firstName: firstName, middleName: middleName, lastName: lastName, refereeId: refereeId)
        
    }
}