//
//  OperationsMenuViewController.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import UIKit

class OperationsMenuViewController: UIViewController, OperationsMenuViewInput {

    @IBOutlet weak var todayWeather: UILabel!
    @IBOutlet weak var tomorrowWeather: UILabel!
    @IBOutlet weak var cityName: UILabel!
    
    var presenter: OperationsMenuViewOutput!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.intialSetup()
    }
   
    func setData(todayWeather: String, tomorrowWeather: String, city: String) {
        
        let celsia = "˚C"
        
        self.todayWeather.text = todayWeather + celsia
        self.tomorrowWeather.text = tomorrowWeather + celsia
        self.cityName.text = city
    }
}
