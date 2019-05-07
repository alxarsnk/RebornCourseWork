//
//  WeatherManager.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 02/05/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

protocol WeatherManagerProtocol {
    
    func getInfo(latitude: String, longitude: String, complition: @escaping (String,String, String)->())
}


class WeatherManager: WeatherManagerProtocol {
    
    func getInfo(latitude: String, longitude: String, complition: @escaping (String, String, String)->())  {
       
        
        var curCity = String()
        var curTemp = String()
        var tomoTemp = String()
        
        YahooWeatherAPI.shared.weather(lat: latitude, lon: longitude, failure: { (error) in
            print(error.localizedDescription)
        }, success: { (response) in
            
            let data = response.data
            
            if let json = try? JSONSerialization.jsonObject(with: data, options: []) as! [String: Any] {
                if let location = json["location"] as? [String: AnyObject] {
                    curCity = location["city"] as! String
                }
            
                if let currentWeather = json["current_observation"] as? [String: AnyObject] {
                    if let currentCondition = currentWeather["condition"] as? [String: AnyObject] {
                    curTemp = String(currentCondition["temperature"] as! Int)
                    }
                }
                if let tomorrowWeather = json["forecasts"] as? NSArray {
                    if let tomorrowDay = tomorrowWeather[1] as? [String: AnyObject] {
                    tomoTemp = String(tomorrowDay["high"] as! Int)
                    }
                }
            complition(curTemp, tomoTemp, curCity)
            }
        })
    }
}
