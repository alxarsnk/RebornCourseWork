//
//  MyVehiclesInteractor.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

class MyVehiclesInteractor: MyVehiclesInteractorIntput {
  
    
    weak var presenter: MyVehiclesInteractorOutput!
    var databaseManager: DatabaseManagerProtocol!
    
    func obtainCountOfCars() -> Int {
        
        let carArray: [Car] = databaseManager.obtainModels()
        return carArray.count
    }
    
    func obtainCars() -> [Car] {
        
        let carArray: [Car] = databaseManager.obtainModels()
        return carArray
    }
   
}
