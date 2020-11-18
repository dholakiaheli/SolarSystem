//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Heli Bavishi on 11/3/20.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    //MARK: - Outlets
    
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetDiameter: UILabel!
    @IBOutlet weak var planetMaxDistanceLabel: UILabel!
    @IBOutlet weak var dayLengthLabel: UILabel!
    
    //MARK: - Properties
    
    var planetReceived: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    func setUpViews(){
        guard let planet = planetReceived else {
            return
        }
        if let planetImg = planet.planetImageName{
            planetImage.image = planetImg
        }
        planetNameLabel.text = planet.planetName
        dayLengthLabel.text = String(planet.planetDayLength) + "Days"
        planetDiameter.text = String(planet.planetDiameter) + "KM"
        planetMaxDistanceLabel.text = String(planet.maxMillionKMsFromSun) + " 10^6km"
    }
}
