//
//  Team.swift
//  ScoreCard
//
//  Created by Pete Dias on 12/28/15.
//  Copyright © 2015 Pete Dias. All rights reserved.
//

import Foundation

//Represents a Hockey team
class Team{
    
    var teamName: String!{
        get
        {
            return self.teamName
        }
        set{
            self.teamName = newValue
        }
    }
    
    var level: Level!{
        get
        {
            return self.level
        }
        set{
            self.level = newValue
        }
    }
    
    var tier: Tier!{
        get
        {
            return self.tier
        }
        set{
            self.tier = newValue
        }
    }
    
    private var players = [Player]()
    private var coaches = [Coach]()
    private var goalsFor = [Goal]()
    private var goalsAgainst = [Goal]()
    
    init(teamName: String, _ level: Level, _ tier: Tier){
        self.teamName = teamName
        self.level = level
        self.tier = tier
    }
    
    func addTeammate(player: Player){
        players.append(player)
    }
    
    func addCoach(coach: Coach){
        coaches.append(coach)
    }
    
    var playerCount: Int
        {
        get
        {
            return (players.count)
        }
    }
    
    func getPlayer(firstName firstName: String, lastName: String) -> Player!{
        
        for player in players{
            
            if player.firstName == firstName && player.lastName == lastName{
                return player
            }
        }
        
        return nil
    }
    
    func addGoalFor(goal: Goal){
        
        //Increment the team's total goal count by 1
        goalsFor.append(goal)
        
        //Increment the player's goal total by 1
        goal.scorer.addGoal()
    }
    
    func addGoalAgainst(goal: Goal){
        goalsAgainst.append(goal)
    }
}