//
//  ConfirmCarViewOutput.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

protocol ConfirmCarViewOutput: AnyObject {
    
    func unboxCarDataValues(car: Car)
    
    func abortCar()
    
    func confirmCar(car: Car)
   
}
