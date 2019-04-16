//
//  RegisterVehicleInteractor.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

class RegisterVehicleInteractor: RegisterVehicleInteractorInput {
   
   
    weak var presenter: RegisterVehicleInteractorOutput!
    var networkManager: NetworkManagerProtocol!
    
    
    func getInfoFromJSON(vin: String) {
        
        if vin.contains(" ") {
            presenter.presentErrorAlert(body: "This field have error.\nPlease fill this field")
        }
        else {
        networkManager.getInfoAboutYourCar(vin: vin) { (newCar) in
            DispatchQueue.main.async {
            self.presenter.sendModel(model: newCar)
                }
            }
        }
    }
}
