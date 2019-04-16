//
//   AlertManager.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 10/04/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation
import UIKit

protocol AlertManagerProtocol {
    
    func showAlert(title: String, body: String) -> UIAlertController
}

class AlertManager: AlertManagerProtocol {
    
 
    func showAlert(title: String, body: String) -> UIAlertController {
        
        let alert = UIAlertController(title: title, message: body, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(alertAction)
        return alert
    }
}
