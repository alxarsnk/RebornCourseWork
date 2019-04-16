//
//  Classes.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 01/04/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation
import RealmSwift


@objcMembers
class Car: Object {
    
    dynamic var label   = String()
    dynamic var year    = String()
    dynamic var model   = String()
    dynamic var VINCode = String()
    
    func getInfo() {
        print("Your car: \nLabel: \(self.label)\nModel: \(self.model)\nYear: \(self.year)\nVin-code: \(self.VINCode)")
    }
}

@objcMembers
class Strong: Object {
    dynamic var name = String()
}


