//
//  ConfirmCarRouter.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation
import UIKit

class ConfirmCarRouter: ConfirmCarRouterInput {
    
    weak var view: UIViewController!
    
    func popVC() {
        view.navigationController?.popViewController(animated: true)
    }
    
}
