//
//  CarDetailInteractor.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class CarDetailInteractor: CarDetailInteractorInput {
    
    weak var presenter: CarDetailInteractorOutput!
    var databaseManager: DatabaseManagerProtocol!
    
    func unboxCarDataValues(car: Car) {
        
        presenter.setCarDataValues(car: car)
    }

}
