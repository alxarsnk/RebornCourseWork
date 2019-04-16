//
//  ConfirmCarViewController.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import UIKit

class ConfirmCarViewController: UIViewController, Abstarct, ConfirmCarViewInput {
  
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var vinLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var labelLabel: UILabel!
   
    var presenter: ConfirmCarViewOutput!
   
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
    
    @IBAction func confirmCarButtonPressed(_ sender: Any) {
        presenter.confirmCar(car: model)
    }
    
    @IBAction func abortCarButtonPressed(_ sender: Any) {
        presenter.abortCar()
    }
}
