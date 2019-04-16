//
//  CarDetailViewController.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import UIKit

class CarDetailViewController: UIViewController, Abstarct, CarDetailViewInput {
   
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var vinLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var labelLabel: UILabel!
    
    var presenter: CarDetailViewOutput!
    
    var model: Car!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.unboxCarDataValues(car: model)
    }
    
    func setCarDataValues(car: Car) {
        
        modelLabel.text = car.model
        vinLabel.text   = car.VINCode
        yearLabel.text  = car.year
        labelLabel.text = car.label
    }
    
    func setData(data: Any) {
        model = data as? Car
    }
}
