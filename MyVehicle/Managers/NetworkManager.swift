//
//  NetworkManager.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 01/04/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

protocol NetworkManagerProtocol {

    func getInfoAboutYourCar(vin: String, complition: @escaping (Car)->())
    
}

class NetworkManager: NetworkManagerProtocol {
    
    func getInfoAboutYourCar(vin: String, complition: @escaping (Car)->()) {
    
        
    var returnCar = Car()
    let baseURL = "https://vpic.nhtsa.dot.gov/api/vehicles/DecodeVinValues/\(vin)?format=json"
        let urlRequest = URLRequest(url: URL(string: baseURL)!, cachePolicy: .reloadIgnoringCacheData, timeoutInterval: 20)
    
    let session = URLSession.shared
    
    let task = session.dataTask(with: urlRequest, completionHandler: {
        (data, response, error) in
        
        if error != nil {
            print("Error: \(String(describing: error?.localizedDescription))")
        }
        else if let data = data, data != Data(capacity: 0) {
            let json = try? JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
            
            if let cars = json!["Results"] as? NSArray {
                for car in cars {
                     if let carInfo = car as? [String: AnyObject] {
                        let newCar = Car()
                        newCar.label = carInfo["Make"] as! String
                        newCar.model = carInfo["Model"] as! String
                        newCar.year = carInfo["ModelYear"] as! String
                        newCar.VINCode = carInfo["VIN"] as! String
                      returnCar = newCar
                    }
                }
            }
        }
        complition(returnCar)
    })
        task.resume()
    }
}


