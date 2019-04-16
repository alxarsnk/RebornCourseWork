//
//  CarDetailPresenter.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

class CarDetailPresenter: CarDetailViewOutput, CarDetailInteractorOutput {
    
    
    var router: CarDetailRouter!
    var interactor: CarDetailInteractor!
    weak var view: CarDetailViewInput!
    
    func unboxCarDataValues(car: Car) {
        
        interactor.unboxCarDataValues(car: car)
    }
    
    func setCarDataValues(car: Car) {
        
        view.setCarDataValues(car: car)
    }
    
    
}
