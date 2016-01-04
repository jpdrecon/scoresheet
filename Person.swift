//
//  Person.swift
//  ScoreCard
//
//  Created by Pete Dias on 12/28/15.
//  Copyright © 2015 Pete Dias. All rights reserved.
//

import Foundation

class Person: CustomStringConvertible{
    
    var firstName: String!{
        get
        {
            return self.firstName
        }
        set{
            self.firstName = newValue
        }
    }
    
    var middleName: String!{
        get
        {
            return self.middleName
        }
        set{
            self.middleName = newValue
        }
    }
    
    var lastName: String!{
        get
        {
            return self.lastName
        }
        set{
            self.lastName = newValue
        }
    }
    
    var description: String{
        return self.firstName + " " + self.lastName
    }
    
    init(firstName firstName: String, middleName: String, lastName: String){
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
    }
    
    var fullName:String{
        get{
            return "\(firstName) \(middleName) \(lastName)"
        }
    }
    
}
