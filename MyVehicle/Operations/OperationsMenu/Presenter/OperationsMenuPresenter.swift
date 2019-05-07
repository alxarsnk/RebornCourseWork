//
//  OperationsMenuPresenter.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

class OperationsMenuPresenter: OperationsMenuViewOutput, OperationsMenuInteractorOutput {
    
    weak var view: OperationsMenuViewInput!
    var router: OperationMenuRouter!
    var interactor: OperationsMenuInteractorInput!
    
    func intialSetup() {
        
        interactor.initialSetup()
    }
    
    func setData(todayWeather: String, tomorrowWeather: String, city: String) {
        
        view.setData(todayWeather: todayWeather, tomorrowWeather: tomorrowWeather, city: city)
    }
}
