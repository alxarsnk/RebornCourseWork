//
//  RegisterVehicleRouter.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation
import UIKit

class RegisterVehicleRouter: RegisterVehicleRouterInput {
    
    weak var view: UIViewController!
    var alertManager: AlertManagerProtocol!
    
    func sendModel(model: Car) {
        view.performSegue(withIdentifier: "confirmCar", sender: model)
    }
    
    func showErrorAlert(body: String) {
       
        let errorAlert =  alertManager.showAlert(title: "Error", body: body)
        view.present(errorAlert, animated: true, completion:  nil)
       
        
    }
}
