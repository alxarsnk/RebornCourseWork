//
//  ConfirmCarConfigurator.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation
import UIKit

class ConfirmCarConfigurator: NSObject {
    
    @IBOutlet weak var viewController: UIViewController!
    
    override func awakeFromNib() {
        
        configureModule()
    }
    
    func configureModule() {
        
        guard let view = viewController as? ConfirmCarViewController else { fatalError() }
        
        let presenter = ConfirmCarPresenter()
        let interactor = ConfirmCarInteractor()
        let router = ConfirmCarRouter()
        let databaseManager = DatabaseManager()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.presenter = presenter
        interactor.databaseManager = databaseManager
        
        router.view = view
    }
}
