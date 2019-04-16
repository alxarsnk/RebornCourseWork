//
//  MyVehiclesPresenter.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

class MyVehiclesPresenter: MyVehiclesViewOutput, MyVehiclesInteractorOutput {
    
    
    weak var view: MyVehiclesViewInput!
    var router: MyVehiclesRouterInput!
    var interactor: MyVehiclesInteractorIntput!
    
    func obtainCountOfCars() -> Int {
        return interactor.obtainCountOfCars()
    }
    
    func obtainCars() -> [Car] {
        return interactor.obtainCars()
    }
    
    func showDetailCar(car: Car) {
        router.showDetailCar(car: car)
    }
}
