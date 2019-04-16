//
//  RegisterVehicleDelegates.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 07/04/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation
import UIKit

class VinTextFieldDelegate: UIViewController, UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
