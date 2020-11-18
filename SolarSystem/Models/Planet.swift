//
//  Planet.swift
//  SolarSystem
//
//  Created by Heli Bavishi on 11/3/20.
//

import UIKit

class Planet{
    
    let planetName: String
    let planetImageName: UIImage?
    let planetDayLength: Double
    let maxMillionKMsFromSun: Double
    let planetDiameter: Int
    
    init(planetName: String, planetImageName: UIImage?, planetDiameter: Int, planetDayLength: Double, maxMillionKMsFromSun: Double ) {
        
        self.planetName = planetName
        self.planetImageName = planetImageName
        self.planetDayLength = planetDayLength
        self.maxMillionKMsFromSun = maxMillionKMsFromSun
        self.planetDiameter = planetDiameter
    }
}
