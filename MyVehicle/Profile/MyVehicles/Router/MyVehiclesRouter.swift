//
//  MyVehiclesRouter.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation
import UIKit

class MyVehiclesRouter: MyVehiclesRouterInput {
    
    weak var view: UIViewController!
    
    func showDetailCar(car: Car) {
        
        view.performSegue(withIdentifier: "detail", sender: car)
    }
    
}
