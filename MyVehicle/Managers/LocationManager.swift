//
//  LocationManager.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 02/05/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
    
    var longitude: String!
    var latitude: String!
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations[0]
        
        let currentLocation = location.coordinate
        
        
        latitude = String(currentLocation.latitude)
        longitude = String(currentLocation.longitude)
    }
    
    func intialSetup (complition: @escaping (String, String)->()) {
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
     
        DispatchQueue.main.asyncAfter(deadline: .now()+0.1) {
            complition(self.latitude, self.longitude)
           }
    }
}
