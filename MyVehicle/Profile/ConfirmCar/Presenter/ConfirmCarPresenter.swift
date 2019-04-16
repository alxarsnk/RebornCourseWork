//
//  ConfirmCarPresenter.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

class ConfirmCarPresenter: ConfirmCarViewOutput, ConfirmCarInteractorOutput {
    
    
    var router: ConfirmCarRouterInput!
    var interactor: ConfirmCarInteractorInput!
    weak var view: ConfirmCarViewInput!
    
    func unboxCarDataValues(car: Car) {
        
        interactor.unboxCarDataValues(car: car)
    }
    
    func setCarDataValues(car: Car) {
        
        view.setCarDataValues(car: car)
    }
    
    func abortCar() {
        router.popVC()
    }
    
    func confirmCar(car: Car) {
        interactor.confirmCar(car: car)
    }

    
    func popVC() {
       router.popVC()
    }
}

