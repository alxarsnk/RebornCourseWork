//
//  RegisterVehicleConfigurator.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation
import UIKit

class RegisterVehicleConfigurator: NSObject {
    
    @IBOutlet weak var viewController: UIViewController!
    
    override func awakeFromNib() {
        
        configureModule()
    }
    
    func configureModule() {
        
        guard let
            view = viewController as? RegisterVehicleViewController
        else { fatalError() }
        
        let presenter = RegisterVehiclePresenter()
        let interactor = RegisterVehicleInteractor()
        let router = RegisterVehicleRouter()
        let networkManager: NetworkManagerProtocol = NetworkManager()
        let alertManager = AlertManager()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.presenter = presenter
        interactor.networkManager = networkManager
        
        router.view = view
        router.alertManager = alertManager
    }
}
