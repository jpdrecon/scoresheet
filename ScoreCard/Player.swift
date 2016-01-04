//
//  Player.swift
//  ScoreCard
//
//  Created by Pete Dias on 12/28/15.
//  Copyright © 2015 Pete Dias. All rights reserved.
//

import Foundation

class Player: Person{
    
    private var shots: Int = 0
    private var goals: Int = 0
    private var assists: Int = 0
    
    var number: Int!{
        get
        {
            return self.number
        }
        set{
            self.number = newValue
        }
    }
    
    private var dominantHand: DominantHand!
    
    init(jerseyNumber number:Int, dominantHand: DominantHand, firstName: String,
        middleName: String, lastName: String){
        
        super.init(firstName: firstName, middleName: middleName, lastName: lastName)
            
        self.number = number
        self.dominantHand = dominantHand
    }
    
    func addJerseyNumber(jerseyNumber: Int){
        number = jerseyNumber
    }
    
    func addShot(){
        self.shots++;
    }
    
    func addShots(shots: Int){
        self.shots += shots
    }
    
    func addGoal(){
        self.goals++
    }
    
    func addGoals(goals: Int){
        self.goals += goals
    }
    
    func addAssist(){
        self.assists++
    }
    
    func addAssists(assists: Int){
        self.assists += assists
    }
}
