//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Lloyd W. Sykes on 12/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    override func climb() {
        if self.altitude < self.maxAltitude && self.inFlight {
            self.altitude += self.maxAltitude * 1/5
            self.decelerate()
        }
    }
    
    override func dive() {
        if self.altitude > 0 && self.inFlight {
            self.altitude -= self.maxAltitude * 1/5
            self.accelerate()
        }
    }
    
    func afterburner() {
        if self.inFlight && self.speed == self.maxSpeed {
            self.speed = self.maxSpeed * 2
        }
    }
}
