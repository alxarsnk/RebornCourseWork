//
//  OperationsMenuConfigurator.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

import UIKit

class OperationsMenuConfigurator: NSObject {
    
    @IBOutlet weak var viewController: UIViewController!
    
    override func awakeFromNib() {
        
        configureModule()
    }
    
    func configureModule() {
        
        guard let view = viewController as? OperationsMenuViewController else { fatalError() }
        
        let presenter = OperationsMenuPresenter()
        let interactor = OperationsMenuInteractor()
        let router = OperationMenuRouter()
        let locationManager = LocationManager()
        let weatherManager = WeatherManager()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.presenter = presenter
        interactor.locationManager = locationManager
        interactor.weatherManager = weatherManager
       
        router.view = view
    }
}
