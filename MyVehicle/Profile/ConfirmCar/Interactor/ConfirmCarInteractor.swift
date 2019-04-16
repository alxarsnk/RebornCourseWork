//
//  ConfirmCarInteractor.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class ConfirmCarInteractor: ConfirmCarInteractorInput {
  
    weak var presenter: ConfirmCarInteractorOutput!
    var databaseManager: DatabaseManagerProtocol!
    
    func unboxCarDataValues(car: Car) {
       
        presenter.setCarDataValues(car: car)
    }
    
    func confirmCar(car: Car) {
        
        databaseManager.clearAll()
        databaseManager.saveModel(model: car)
        presenter.popVC()
     }
    
 }
