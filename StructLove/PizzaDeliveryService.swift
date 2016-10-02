//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct PizzaDeliveryService {
    
    let location: Coordinate
    var pizzasAvailable = 10
    
    init(location: Coordinate) {
        self.location = location
    }
    
    func isInRange(to destination: Coordinate) -> Bool {
        return destination.distance(to: location) <= 5000
    }
    
    mutating func deliverPizza(to destination: Coordinate) -> Bool {
        
        var isDeliverable: Bool
        
        if isInRange(to: destination) {
            if pizzasAvailable == 0 {
                isDeliverable = false
            } else {
                pizzasAvailable -= 1
                isDeliverable = true
            }
        } else {
            isDeliverable = false
        }
        
        return isDeliverable
        
    }
    
    
    
    
}
