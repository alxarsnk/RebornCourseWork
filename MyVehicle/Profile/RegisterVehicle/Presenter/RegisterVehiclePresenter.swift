//
//  RegisterVehiclePresenter.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

class RegisterVehiclePresenter: RegisterVehicleViewOutput, RegisterVehicleInteractorOutput {
    
   
    weak var view: RegisterVehicleViewInput!
    var interactor: RegisterVehicleInteractorInput!
    var router: RegisterVehicleRouterInput!
    
    
    func getInfoFromJSON(vin: String) {
        interactor.getInfoFromJSON(vin: vin)
    }
    
    func sendModel(model: Car) {
        router.sendModel(model: model)
    }
    
    func presentErrorAlert(body: String) {
        router.showErrorAlert(body: body)
    }
    
    
    
}
