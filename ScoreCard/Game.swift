//
//  Game.swift
//  ScoreCard
//
//  Created by Pete Dias on 12/29/15.
//  Copyright © 2015 Pete Dias. All rights reserved.
//

import Foundation

class Game{
    
    //****************************************** Properties *********************************************
    
    private var level: Level!
    private var periodLength: Int = 0
    private let gameDate = NSDate()
    
    private var referee: Referee!
    private var linesmen = [Linesman]()
    
    private var homeTeamGoals = [Goal]()
    private var homeTeamPenalties = [Penalty]()
    private var homeTeamShots: Int = 0
    
    private var visitingTeamGoals = [Goal]()
    private var visitingTeamPenalties = [Penalty]()
    private var visitingTeamShots: Int = 0
    
    var homeTeam: Team!{
        
        get
        {
            return self.homeTeam
        }
        set{
            self.homeTeam = newValue
        }
    }
    
    var visitingTeam: Team!{
        
        get
        {
            return self.visitingTeam
        }
        set{
            self.visitingTeam = newValue
        }
    }
    
    //**************************************** End Properties ****************************************
    
    //**************************************** Constructors ******************************************
    
    init(level: Level, periodLength: Int){
        
        self.level = level
        self.periodLength = periodLength
    }
    
    init(level: Level, periodLength: Int, gameDate: NSDate){
        
        self.level = level
        self.periodLength = periodLength
        self.gameDate = gameDate
    }
    
    init(level: Level, periodLength: Int, referee: Referee, linesmen: Linesman...){
        
        self.level = level
        self.periodLength = periodLength
        
        addOfficials(<#T##referee: Referee##Referee#>, linesmen: <#T##Linesman...##Linesman#>)
    }
    
    //*************************************** End Constructors ***************************************
    
    //Add referee and linesmen
    func addOfficials(referee: Referee, linesmen: Linesman...){
        
        addReferee(referee)
        
        addLinesman(linesmen)
    }
    
    //Add referee 
    func addReferee(referee: Referee){
        self.referee = referee
    }
    
    //Add a variable number of linesmen
    func addLinesman(linesman: Linesman...){
        
        for linesman in linesmen{
            self.linesmen.append(linesman)
        }
    }
    
    //Add an array of linesmen
    func addLinesman(linesman: [Linesman]){
        
        for linesman in linesmen{
            self.linesmen.append(linesman)
        }
    }
    
    //Remove a referee
    func removeReferee(referee: Referee){
        
        if self.referee.refereeId == referee.refereeId{
            self.referee = nil
        }
    }
    
    //Remove a linesman
    func removeLinesman(linesmanToRemove: Linesman){
        
        /*for currentLinesman in self.linesmen{
            
            if currentLinesman.refereeId == linesmanToRemove.refereeId{
                
                if let index = linesmen.indexOf(currentLinesman) {
                    linesmen.removeAtIndex(index)
                }
            }
        }*/
    }
    
    //Increment the home team's shots by one
    func addHomeTeamSave(player: Player, goalie: Player){
        
        addShot(<#T##player: Player##Player#>, goalie: <#T##Player#>)
        
                visitingTeamShots++
    }
    
    //Increment the visiting team's shots by one
    func addVisitingTeamSave(player: Player, goalie: Player){
        
        addShot(<#T##player: Player##Player#>, goalie: <#T##Player#>)
        
        homeTeamShots++
    }
    
    private func addShot(player: Player, goalie: Player){
        
        player.addShot()
        
        let onIceGoalie = goalie as! Goalie
        
        onIceGoalie.addSave()
    }
    
    func addHomeTeamGoal(goal: Goal){
        
        homeTeamGoals.append(goal)
        
        homeTeam.addGoalFor(goal)
        
        visitingTeam.addGoalAgainst(goal)
    }

    func addVisitingTeamGoal(goal: Goal){
        
        visitingTeamGoals.append(goal)
        
        homeTeam.addGoalAgainst(goal)
        
        visitingTeam.addGoalFor(goal)
    }
    
    func addHomeTeamPenalty(penalty: Penalty){
        homeTeamPenalties.append(penalty)
    }
    
    func addVistingTeamPenalty(penalty: Penalty){
        visitingTeamPenalties.append(penalty)
    }
}