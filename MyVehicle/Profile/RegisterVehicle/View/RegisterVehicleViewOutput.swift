//
//  RegisterVehicleViewOutput.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

protocol RegisterVehicleViewOutput: AnyObject {
    
    func getInfoFromJSON(vin: String)
    
    
}
