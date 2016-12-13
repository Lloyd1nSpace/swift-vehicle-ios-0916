//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Lloyd W. Sykes on 12/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        if self.speed < self.maxSpeed {
            self.speed += self.maxSpeed * 1/5
        }
    }
    
    override func decelerate() {
        if self.speed > 0 {
            self.speed -= self.maxSpeed * 1/5
        }
    }
    
    func driftRight() {
        if self.speed > 0 {
            self.speed -= self.speed * 1/4
            if self.heading == 360 {
                self.heading = 0
            } else {
                self.heading += 90
            }
        }
    }
    
    func driftLeft() {
        if self.speed > 0 {
            self.speed -= self.speed * 1/4
            if self.heading == 0 {
                self.heading = 270
            } else {
                self.heading -= 90
            }
        }
    }
}
