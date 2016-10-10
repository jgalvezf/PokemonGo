//
//  ViewController.swift
//  PokemonGo
//
//  Created by Jorge Galvez Fujishima on 9/10/16.
//  Copyright © 2016 Jorge Galvez Fujishima. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet var mapView: MKMapView!
    var manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.manager.delegate = self
        
        
        if(CLLocationManager.authorizationStatus() == .authorizedWhenInUse)
        {
            self.mapView.showsUserLocation = true
            print("Estamos listos para cazar Pokemons")
        }
        else
        {
            self.manager.requestWhenInUseAuthorization()
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

