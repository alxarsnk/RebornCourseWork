//
//  RegisterVehicleViewController.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import UIKit

class RegisterVehicleViewController: UIViewController, RegisterVehicleViewInput {
    
    @IBOutlet weak var vinCodeTextField: UITextField!
    
    var presenter: RegisterVehicleViewOutput!
    
    let textFieldDelegate = VinTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        vinCodeTextField.delegate = textFieldDelegate
    }
    
    @IBAction func submitButtonPressed(_ sender: Any) {
        view.endEditing(true)
        presenter.getInfoFromJSON(vin: vinCodeTextField.text!)
    }
    @IBAction func recognizeButtonPressed(_ sender: Any) {
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "confirmCar", let model = sender as? Car {
            let destinationController = segue.destination as! Abstarct
            destinationController.setData(data: model)
        }
    }
}
