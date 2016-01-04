//
//  Coach.swift
//  ScoreCard
//
//  Created by Pete Dias on 12/29/15.
//  Copyright © 2015 Pete Dias. All rights reserved.
//

import Foundation

class Coach: Person{
    
    var coachId: String!{
        get
        {
            return self.coachId
        }
        set{
            self.coachId = newValue
        }
    }
    
    init(firstName: String, middleName: String, lastName: String, coachId: String){
            
            super.init(firstName: firstName, middleName: middleName, lastName: lastName)
            
            self.coachId = coachId
    }
}