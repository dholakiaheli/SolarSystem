//
//  PlanetTableViewController.swift
//  SolarSystem
//
//  Created by Heli Bavishi on 11/3/20.
//

import UIKit

class PlanetTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlanetController.planets.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        
        let planet = PlanetController.planets[indexPath.row]
        
        cell.textLabel?.text = planet.planetName
        cell.imageView?.image = planet.planetImageName
        cell.detailTextLabel?.text = "Planet \(indexPath.row)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerImage: UIImage = UIImage(named: "solarSystem")!
        let headerView = UIImageView(image: headerImage)
        return headerView
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        // IIDOO
        // Identifier - what segue was triggered?
        if segue.identifier == "toDetailVC" {
            //Index - what cell triggered the segue?
            if let indexPath = tableView.indexPathForSelectedRow{
                //Destination - where are we trying to go? which View?
                guard let destinationVC = segue.destination as? PlanetDetailViewController
                else {
                    return
                }
                // Objet to send - what am I trying send to next view?
                let planetToSend = PlanetController.planets[indexPath.row]
                
                //Object to receive - where is this object going to be stored on the new view
                destinationVC.planetReceived = planetToSend
            }
        }
    }
}
