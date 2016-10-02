//
//  Person.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


struct Person {
    let firstName: String
    let lastName: String
    let home: Coordinate
    var isHungry = true
    
    init(firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
    }
    
    mutating func eatPizza(from service: PizzaDeliveryService) -> Bool {
        
        var willEatFromHome: Bool
        if isHungry == true && service.isInRange(to: home) {
            isHungry = false
            willEatFromHome = true
        } else {
            willEatFromHome = false
        }
        
        if service.isInRange(to: home) == false {
            willEatFromHome = false
        }
        return willEatFromHome
    }
    
}
