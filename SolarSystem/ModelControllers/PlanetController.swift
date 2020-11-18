//
//  PlanetController.swift
//  SolarSystem
//
//  Created by Heli Bavishi on 11/3/20.
//

import UIKit

class PlanetController{
    static var planets: [Planet]{
        
        let mercuryImg = UIImage(named: "mercury")
        let venusImg = UIImage(named: "venus")
        let earthImg = UIImage(named: "earth")
        let marsImg = UIImage(named: "mars")
        let jupiterImg = UIImage(named: "jupiter")
        let saturnImg = UIImage(named: "saturn")
        let uranusImg = UIImage(named: "uranus")
        let neptuneImg = UIImage(named: "neptune")
        let plutoImg = UIImage(named: "pluto")
        
        let mercury = Planet(planetName: "Mercury", planetImageName: mercuryImg, planetDiameter: 4880, planetDayLength: 87.969, maxMillionKMsFromSun: 43.0)
        
        let venus = Planet(planetName: "Venus", planetImageName: venusImg, planetDiameter: 12104, planetDayLength: 2802, maxMillionKMsFromSun: 108.2)
        
        let earth = Planet(planetName: "Earth", planetImageName: earthImg, planetDiameter: 12756, planetDayLength: 24, maxMillionKMsFromSun: 149.6)
        
        let mars = Planet(planetName: "Mars", planetImageName: marsImg, planetDiameter: 6792, planetDayLength: 24.7, maxMillionKMsFromSun: 227.9)
        
        let jupiter = Planet(planetName: "Jupiter", planetImageName: jupiterImg, planetDiameter: 142984, planetDayLength: 9.9, maxMillionKMsFromSun: 778.6)
        
        let saturn = Planet(planetName: "Saturn", planetImageName: saturnImg, planetDiameter: 120536, planetDayLength: 10.7, maxMillionKMsFromSun: 1433.5)
        
        let uranus = Planet(planetName: "Uranus", planetImageName: uranusImg, planetDiameter: 51118, planetDayLength: 17.2, maxMillionKMsFromSun: 2872.5)
        
        let neptune = Planet(planetName: "Neptune", planetImageName: neptuneImg, planetDiameter: 49528, planetDayLength: 16.1, maxMillionKMsFromSun: 4495.1)
        
        let pluto = Planet(planetName: "Pluto", planetImageName: plutoImg, planetDiameter: 2370, planetDayLength: 153.3, maxMillionKMsFromSun: 5906.4)
        
        return [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]
    }
}
