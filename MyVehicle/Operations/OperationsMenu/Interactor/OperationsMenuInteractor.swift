//
//  OperationsMenuInteractor.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation
import CoreLocation

class OperationsMenuInteractor: OperationsMenuInteractorInput {
  
    weak var presenter: OperationsMenuInteractorOutput!
    
    var locationManager: LocationManager!
    var weatherManager: WeatherManagerProtocol!
    
    var coordinates: (latitude: String, longitude: String) = ("0","0")
    
    func initialSetup() {
       
       locationManager.intialSetup { (latitude, longitude) in
        self.weatherManager.getInfo(latitude: latitude, longitude: longitude, complition: { (todayWeather, tomorrowWeather, city) in
            
            DispatchQueue.main.async {
                
                self.presenter.setData(todayWeather: todayWeather, tomorrowWeather: tomorrowWeather, city: city)
                }
            })
        }
    }
}
